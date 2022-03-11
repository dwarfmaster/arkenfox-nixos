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
    <div class="id">${id}</div> <a href="${link}">${link}</a><br>
  '';
  buildLinks = links: ''
    <div class="links"><p>
      ${mapAttrsToString buildLink links}
    </p></div>
  '';

  # Meta
  buildMeta = name: desc: ''
    <div class="id">${name}</div> ${desc}<br>
  '';
  buildMetas = metas: ''
    <div class="metas"><p>
      ${mapAttrsToString buildMeta metas}
    </p></div>
  '';

  # Settings
  buildSetting = setting: ''
    <tr>
      <td><input type="checkbox" disabled ${if setting.enabled then "checked" else ""}></td>
      <td>${setting.name}</td>
      <td>${toHTML setting.value}</td>
    </tr>
  '';
  buildSettings = settings: ''
    <table>
      ${concatMapStrings buildSetting settings}
    </table>
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

  upstream =
    if version == "master"
    then "https://github.com/arkenfox/user.js"
    else "https://github.com/arkenfox/user.js/tree/${version}";

in writeTextFile {
  name = "arkenfox-user.js-doc.html";
  text = ''
<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" href="${./style.css}">
</head>
<body><div id="page">
<h1>Arkenfox <a href="${upstream}">user.js</a>
    for Firefox ${if version == "master" then "" else version}</h1>

<p>Documentation built by
<a href="https://github.com/dwarfmaster/arkenfox-nixos">DwarfMaster</a>.</p>

${mapAttrsToString buildSection extracted}
</div></body>
</html>
'';
}
