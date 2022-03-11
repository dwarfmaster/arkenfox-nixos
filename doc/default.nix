{ extracted, version, writeTextFile, lib, ... }:

let

  inherit (lib) concatStrings mapAttrsToList;

  mapAttrsToString = f: attrs:
    concatStrings (mapAttrsToList f attrs);

  # Links
  buildLink = id: link: ''
    <dt>${id}</dt>
    <dd><a href="${link}">${link}</a></dd>
  '';
  buildLinks = links: ''
    <dl class="links">
      ${mapAttrsToString buildLink links}
    </dl>
  '';

  # Meta
  buildMeta = name: desc: ''
    <dt>${name}</dt><dd>${desc}</dd>
  '';
  buildMetas = metas: ''
    <dl class="metas">
      ${mapAttrsToString buildMeta metas}
    </dl>
  '';

  # Subsections
  # TODO settings
  buildSubsection = name: sub: ''
    <div class="subsection"><details>
      <summary>${name}: ${sub.meta.title}</summary>
      <div class="description">
        <p>${sub.meta.description}</p>
        ${buildMetas (builtins.removeAttrs sub.meta ["title" "description" "links"])}
        ${buildLinks sub.meta.links}
      </div>
      <div class="settings">
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
