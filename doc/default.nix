{ extracted, version, writeTextFile, lib, ... }:

let

  inherit (lib) concatMapStrings concatStrings mapAttrsToList;

  mapAttrsToString = f: attrs:
    concatStrings (mapAttrsToList f attrs);

  toHTML = value:
    if builtins.typeOf value == "bool"
    then (if value then "true" else "false")
    else
      if builtins.typeOf value == "string"
      then "\"${value}\""
      else toString value;

  # Links
  buildLink = id: link: ''
    <dt>${id}</dt>
    <dd><a href="${link}">${link}</a></dd>
  '';
  buildLinks = links: ''
    <div class="links"><dl>
      ${mapAttrsToString buildLink links}
    </dl></div>
  '';

  # Meta
  buildMeta = name: desc: ''
    <dt>${name}</dt><dd>${desc}</dd>
  '';
  buildMetas = metas: ''
    <div class="metas"><dl>
      ${mapAttrsToString buildMeta metas}
    </dl></div>
  '';

  # Settings
  buildSetting = setting: ''
    <dt>
      <input type="checkbox" disabled ${if setting.enabled then "checked" else ""}>
      ${setting.name}
    </dt>
    <dd>${toHTML setting.value}</dd>
  '';
  buildSettings = settings: ''
    <dl>
      ${concatMapStrings buildSetting settings}
    </dl>
  '';

  # Subsections
  buildSubsection = name: sub: ''
    <div class="subsection"><details>
      <summary>${name}: ${sub.meta.title}</summary>
      <div class="description">
        <p>${sub.meta.description}</p>
        ${buildMetas (builtins.removeAttrs sub.meta ["title" "description" "links"])}
        ${buildLinks sub.meta.links}
      </div>
      <div class="settings">
        ${buildSettings sub.settings}
      </div>
    </details></div>
  '';

  # Sections
  buildSection = name: section: ''
    <div class="section"><details>
      <summary>${name}: ${section.meta.title}</summary>
      <div class="description">
        <p>${section.meta.description}</p>
        ${buildMetas
          (builtins.removeAttrs section.meta
            ["title" "description" "links" "parrots"])}
        ${buildLinks section.meta.links}
      </div>
      ${mapAttrsToString buildSubsection
        (builtins.removeAttrs section ["meta"])}
    </details></div>
  '';

in writeTextFile {
  name = "arkenfox-user.js-doc.html";
  text = ''
<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" href="${./style.css}">
</head>
<body><div id="page">
<h1>Arkenfox user.js for firefox ${if version == "master" then "" else version}</h1>

<a href="${if version == "master"
           then "https://github.com/arkenfox/user.js"
           else "https://github.com/arkenfox/user.js/tree/${version}"}">Upstream</a>

${mapAttrsToString buildSection extracted}
</div></body>
</html>
'';
}
