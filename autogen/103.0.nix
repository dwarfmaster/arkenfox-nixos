{
  "0000" = {
    "0000" = {
      settings = [
        {
          name = "browser.aboutConfig.showWarning";
          enabled = true;
          value = false;
        }
      ];
      meta = {
        title = "disable about:config warning";
        description = ''
        '';
        links = {
        };
      };
    };
    meta = {
      title = "TOPLEVEL";
      description = ''
      '';
      links = {
      };
      parrots = [
        "START: Oh yes, the Norwegian Blue... what's wrong with it?"
      ];
    };
  };
  "0100" = {
    "0101" = {
      settings = [
        {
          name = "browser.shell.checkDefaultBrowser";
          enabled = true;
          value = false;
        }
      ];
      meta = {
        title = "disable default browser check";
        description = ''
        '';
        "SETTING" = "General>Startup>Always check if Firefox is your default browser";
        links = {
        };
      };
    };
    "0102" = {
      settings = [
        {
          name = "browser.startup.page";
          enabled = true;
          value = 0;
        }
      ];
      meta = {
        title = "set startup page [SETUP-CHROME]";
        description = ''
          0=blank, 1=home, 2=last visited page, 3=resume previous session
        '';
        "NOTE" = "Session Restore is cleared with history (2811), and not used in Private Browsing mode";
        "SETTING" = "General>Startup>Restore previous session";
        links = {
        };
      };
    };
    "0103" = {
      settings = [
        {
          name = "browser.startup.homepage";
          enabled = true;
          value = "about:blank";
        }
      ];
      meta = {
        title = "set HOME+NEWWINDOW page";
        description = ''
          about:home=Activity Stream (default, see 0105), custom URL, about:blank
        '';
        "SETTING" = "Home>New Windows and Tabs>Homepage and new windows";
        links = {
        };
      };
    };
    "0104" = {
      settings = [
        {
          name = "browser.newtabpage.enabled";
          enabled = true;
          value = false;
        }
        {
          name = "browser.newtab.preload";
          enabled = true;
          value = false;
        }
      ];
      meta = {
        title = "set NEWTAB page";
        description = ''
          true=Activity Stream (default, see 0105), false=blank page
        '';
        "SETTING" = "Home>New Windows and Tabs>New tabs";
        links = {
        };
      };
    };
    "0105" = {
      settings = [
        {
          name = "browser.newtabpage.activity-stream.feeds.telemetry";
          enabled = true;
          value = false;
        }
        {
          name = "browser.newtabpage.activity-stream.telemetry";
          enabled = true;
          value = false;
        }
        {
          name = "browser.newtabpage.activity-stream.feeds.snippets";
          enabled = true;
          value = false;
        }
        {
          name = "browser.newtabpage.activity-stream.feeds.section.topstories";
          enabled = true;
          value = false;
        }
        {
          name = "browser.newtabpage.activity-stream.section.highlights.includePocket";
          enabled = true;
          value = false;
        }
        {
          name = "browser.newtabpage.activity-stream.showSponsored";
          enabled = true;
          value = false;
        }
        {
          name = "browser.newtabpage.activity-stream.feeds.discoverystreamfeed";
          enabled = true;
          value = false;
        }
        {
          name = "browser.newtabpage.activity-stream.showSponsoredTopSites";
          enabled = true;
          value = false;
        }
      ];
      meta = {
        title = "disable some Activity Stream items";
        description = ''
          Activity Stream is the default homepage/newtab based on metadata and browsing behavior
        '';
        "SETTING" = "Home>Firefox Home Content>...  to show/hide what you want";
        links = {
        };
      };
    };
    "0106" = {
      settings = [
        {
          name = "browser.newtabpage.activity-stream.default.sites";
          enabled = true;
          value = "";
        }
      ];
      meta = {
        title = "clear default topsites";
        description = ''
        '';
        "NOTE" = "This does not block you from adding your own";
        links = {
        };
      };
    };
    meta = {
      title = "STARTUP";
      description = ''
      '';
      links = {
      };
      parrots = [
        "0100 syntax error: the parrot's dead!"
      ];
    };
  };
  "0200" = {
    "0201" = {
      settings = [
        {
          name = "geo.provider.network.url";
          enabled = true;
          value = "https://location.services.mozilla.com/v1/geolocate?key=%MOZILLA_API_KEY%";
        }
        {
          name = "geo.provider.network.logging.enabled";
          enabled = false;
          value = true;
        }
      ];
      meta = {
        title = "use Mozilla geolocation service instead of Google if permission is granted [FF74+]";
        description = ''
          Optionally enable logging to the console (defaults to false)
        '';
        links = {
        };
      };
    };
    "0202" = {
      settings = [
        {
          name = "geo.provider.ms-windows-location";
          enabled = true;
          value = false;
        }
        {
          name = "geo.provider.use_corelocation";
          enabled = true;
          value = false;
        }
        {
          name = "geo.provider.use_gpsd";
          enabled = true;
          value = false;
        }
        {
          name = "geo.provider.use_geoclue";
          enabled = true;
          value = false;
        }
      ];
      meta = {
        title = "disable using the OS's geolocation service";
        description = ''
        '';
        links = {
        };
      };
    };
    "0203" = {
      settings = [
        {
          name = "browser.region.network.url";
          enabled = true;
          value = "";
        }
        {
          name = "browser.region.update.enabled";
          enabled = true;
          value = false;
        }
      ];
      meta = {
        title = "disable region updates";
        description = ''
        '';
        links = {
          "1" = "https://firefox-source-docs.mozilla.org/toolkit/modules/toolkit_modules/Region.html";
        };
      };
    };
    "0204" = {
      settings = [
        {
          name = "browser.search.region";
          enabled = false;
          value = "US";
        }
      ];
      meta = {
        title = "set search region";
        description = ''
        '';
        "NOTE" = "May not be hidden if Firefox has changed your settings due to your region (0203)";
        links = {
        };
      };
    };
    "0210" = {
      settings = [
        {
          name = "intl.accept_languages";
          enabled = true;
          value = "en-US, en";
        }
      ];
      meta = {
        title = "set preferred language for displaying pages";
        description = ''
        '';
        "SETTING" = "General>Language and Appearance>Language>Choose your preferred language...";
        "TEST" = "https://addons.mozilla.org/about";
        links = {
        };
      };
    };
    "0211" = {
      settings = [
        {
          name = "javascript.use_us_english_locale";
          enabled = true;
          value = true;
        }
      ];
      meta = {
        title = "use en-US locale regardless of the system or region locale";
        description = ''
        '';
        "SETUP-WEB" = "May break some input methods e.g xim/ibus for CJK languages [1]";
        "TEST" = "https://arkenfox.github.io/TZP/tests/formatting.html";
        links = {
          "1" = "https://bugzilla.mozilla.org/buglist.cgi?bug_id=867501,1629630";
        };
      };
    };
    meta = {
      title = "GEOLOCATION / LANGUAGE / LOCALE";
      description = ''
      '';
      links = {
      };
      parrots = [
        "0200 syntax error: the parrot's definitely deceased!"
      ];
    };
  };
  "0300" = {
    "0320" = {
      settings = [
        {
          name = "extensions.getAddons.showPane";
          enabled = true;
          value = false;
        }
      ];
      meta = {
        title = "disable recommendation pane in about:addons (uses Google Analytics)";
        description = ''
        '';
        links = {
        };
      };
    };
    "0321" = {
      settings = [
        {
          name = "extensions.htmlaboutaddons.recommendations.enabled";
          enabled = true;
          value = false;
        }
      ];
      meta = {
        title = "disable recommendations in about:addons' Extensions and Themes panes [FF68+]";
        description = ''
        '';
        links = {
        };
      };
    };
    "0322" = {
      settings = [
        {
          name = "browser.discovery.enabled";
          enabled = true;
          value = false;
        }
      ];
      meta = {
        title = "disable personalized Extension Recommendations in about:addons and AMO [FF65+]";
        description = ''
        '';
        "SETTING" = "Privacy & Security>Firefox Data Collection & Use>Allow Firefox to make personalized extension recommendations";
        "NOTE" = "This pref has no effect when Health Reports (0331) are disabled";
        links = {
          "1" = "https://support.mozilla.org/kb/personalized-extension-recommendations";
        };
      };
    };
    "0330" = {
      settings = [
        {
          name = "datareporting.policy.dataSubmissionEnabled";
          enabled = true;
          value = false;
        }
      ];
      meta = {
        title = "disable new data submission [FF41+]";
        description = ''
          If disabled, no policy is shown or upload takes place, ever
        '';
        links = {
          "1" = "https://bugzilla.mozilla.org/1195552";
        };
      };
    };
    "0331" = {
      settings = [
        {
          name = "datareporting.healthreport.uploadEnabled";
          enabled = true;
          value = false;
        }
      ];
      meta = {
        title = "disable Health Reports";
        description = ''
        '';
        "SETTING" = "Privacy & Security>Firefox Data Collection & Use>Allow Firefox to send technical... data";
        links = {
        };
      };
    };
    "0332" = {
      settings = [
        {
          name = "toolkit.telemetry.unified";
          enabled = true;
          value = false;
        }
        {
          name = "toolkit.telemetry.enabled";
          enabled = true;
          value = false;
        }
        {
          name = "toolkit.telemetry.server";
          enabled = true;
          value = "data:,";
        }
        {
          name = "toolkit.telemetry.archive.enabled";
          enabled = true;
          value = false;
        }
        {
          name = "toolkit.telemetry.newProfilePing.enabled";
          enabled = true;
          value = false;
        }
        {
          name = "toolkit.telemetry.shutdownPingSender.enabled";
          enabled = true;
          value = false;
        }
        {
          name = "toolkit.telemetry.updatePing.enabled";
          enabled = true;
          value = false;
        }
        {
          name = "toolkit.telemetry.bhrPing.enabled";
          enabled = true;
          value = false;
        }
        {
          name = "toolkit.telemetry.firstShutdownPing.enabled";
          enabled = true;
          value = false;
        }
      ];
      meta = {
        title = "disable telemetry";
        description = ''
          The "unified" pref affects the behavior of the "enabled" pref
          - If "unified" is false then "enabled" controls the telemetry module
          - If "unified" is true then "enabled" only controls whether to record extended data
        '';
        "NOTE" = "\"toolkit.telemetry.enabled\" is now LOCKED to reflect prerelease (true) or release builds (false) [2]";
        links = {
          "2" = "https://medium.com/georg-fritzsche/data-preference-changes-in-firefox-58-2d5df9c428b5";
          "1" = "https://firefox-source-docs.mozilla.org/toolkit/components/telemetry/telemetry/internals/preferences.html";
        };
      };
    };
    "0333" = {
      settings = [
        {
          name = "toolkit.telemetry.coverage.opt-out";
          enabled = true;
          value = true;
        }
        {
          name = "toolkit.coverage.opt-out";
          enabled = true;
          value = true;
        }
        {
          name = "toolkit.coverage.endpoint.base";
          enabled = true;
          value = "";
        }
      ];
      meta = {
        title = "disable Telemetry Coverage";
        description = ''
        '';
        links = {
          "1" = "https://blog.mozilla.org/data/2018/08/20/effectively-measuring-search-in-firefox/";
        };
      };
    };
    "0334" = {
      settings = [
        {
          name = "browser.ping-centre.telemetry";
          enabled = true;
          value = false;
        }
      ];
      meta = {
        title = "disable PingCentre telemetry (used in several System Add-ons) [FF57+]";
        description = ''
          Defense-in-depth: currently covered by 0331
        '';
        links = {
        };
      };
    };
    "0340" = {
      settings = [
        {
          name = "app.shield.optoutstudies.enabled";
          enabled = true;
          value = false;
        }
      ];
      meta = {
        title = "disable Studies";
        description = ''
        '';
        "SETTING" = "Privacy & Security>Firefox Data Collection & Use>Allow Firefox to install and run studies";
        links = {
        };
      };
    };
    "0341" = {
      settings = [
        {
          name = "app.normandy.enabled";
          enabled = true;
          value = false;
        }
        {
          name = "app.normandy.api_url";
          enabled = true;
          value = "";
        }
      ];
      meta = {
        title = "disable Normandy/Shield [FF60+]";
        description = ''
          Shield is a telemetry system that can push and test "recipes"
        '';
        links = {
          "1" = "https://mozilla.github.io/normandy/";
        };
      };
    };
    "0350" = {
      settings = [
        {
          name = "breakpad.reportURL";
          enabled = true;
          value = "";
        }
        {
          name = "browser.tabs.crashReporting.sendReport";
          enabled = true;
          value = false;
        }
        {
          name = "browser.crashReports.unsubmittedCheck.enabled";
          enabled = false;
          value = false;
        }
      ];
      meta = {
        title = "disable Crash Reports";
        description = ''
        '';
        links = {
        };
      };
    };
    "0351" = {
      settings = [
        {
          name = "browser.crashReports.unsubmittedCheck.autoSubmit2";
          enabled = true;
          value = false;
        }
      ];
      meta = {
        title = "enforce no submission of backlogged Crash Reports [FF58+]";
        description = ''
        '';
        "SETTING" = "Privacy & Security>Firefox Data Collection & Use>Allow Firefox to send backlogged crash reports ";
        links = {
        };
      };
    };
    "0360" = {
      settings = [
        {
          name = "captivedetect.canonicalURL";
          enabled = true;
          value = "";
        }
        {
          name = "network.captive-portal-service.enabled";
          enabled = true;
          value = false;
        }
      ];
      meta = {
        title = "disable Captive Portal detection";
        description = ''
        '';
        links = {
          "1" = "https://www.eff.org/deeplinks/2017/08/how-captive-portals-interfere-wireless-security-and-privacy";
        };
      };
    };
    "0361" = {
      settings = [
        {
          name = "network.connectivity-service.enabled";
          enabled = true;
          value = false;
        }
      ];
      meta = {
        title = "disable Network Connectivity checks [FF65+]";
        description = ''
        '';
        links = {
          "1" = "https://bugzilla.mozilla.org/1460537";
        };
      };
    };
    meta = {
      title = "QUIETER FOX";
      description = ''
      '';
      links = {
      };
      parrots = [
        "0300 syntax error: the parrot's not pinin' for the fjords!"
      ];
    };
  };
  "0400" = {
    "0401" = {
      settings = [
        {
          name = "browser.safebrowsing.malware.enabled";
          enabled = false;
          value = false;
        }
        {
          name = "browser.safebrowsing.phishing.enabled";
          enabled = false;
          value = false;
        }
      ];
      meta = {
        title = "disable SB (Safe Browsing)";
        description = ''
        '';
        "SETTING" = "Privacy & Security>Security>... Block dangerous and deceptive content";
        "WARNING" = "Do this at your own risk! These are the master switches";
        links = {
        };
      };
    };
    "0402" = {
      settings = [
        {
          name = "browser.safebrowsing.downloads.enabled";
          enabled = false;
          value = false;
        }
      ];
      meta = {
        title = "disable SB checks for downloads (both local lookups + remote)";
        description = ''
          This is the master switch for the safebrowsing.downloads* prefs (0403, 0404)
        '';
        "SETTING" = "Privacy & Security>Security>... \"Block dangerous downloads\"";
        links = {
        };
      };
    };
    "0403" = {
      settings = [
        {
          name = "browser.safebrowsing.downloads.remote.enabled";
          enabled = true;
          value = false;
        }
        {
          name = "browser.safebrowsing.downloads.remote.url";
          enabled = false;
          value = "";
        }
      ];
      meta = {
        title = "disable SB checks for downloads (remote)";
        description = ''
          To verify the safety of certain executable files, Firefox may submit some information about the
          file, including the name, origin, size and a cryptographic hash of the contents, to the Google
          Safe Browsing service which helps Firefox determine whether or not the file should be blocked
        '';
        "SETUP-SECURITY" = "If you do not understand this, or you want this protection, then override this";
        links = {
        };
      };
    };
    "0404" = {
      settings = [
        {
          name = "browser.safebrowsing.downloads.remote.block_potentially_unwanted";
          enabled = false;
          value = false;
        }
        {
          name = "browser.safebrowsing.downloads.remote.block_uncommon";
          enabled = false;
          value = false;
        }
      ];
      meta = {
        title = "disable SB checks for unwanted software";
        description = ''
        '';
        "SETTING" = "Privacy & Security>Security>... \"Warn you about unwanted and uncommon software\"";
        links = {
        };
      };
    };
    "0405" = {
      settings = [
        {
          name = "browser.safebrowsing.allowOverride";
          enabled = false;
          value = false;
        }
      ];
      meta = {
        title = "disable \"ignore this warning\" on SB warnings [FF45+]";
        description = ''
          If clicked, it bypasses the block for that session. This is a means for admins to enforce SB
        '';
        "TEST" = "see https://github.com/arkenfox/user.js/wiki/Appendix-A-Test-Sites#-mozilla";
        links = {
          "1" = "https://bugzilla.mozilla.org/1226490";
        };
      };
    };
    meta = {
      title = "SAFE BROWSING (SB)";
      description = ''
        SB has taken many steps to preserve privacy. If required, a full url is never sent
        to Google, only a part-hash of the prefix, hidden with noise of other real part-hashes.
        Firefox takes measures such as stripping out identifying parameters and since SBv4 (FF57+)
        doesn't even use cookies. (#Turn on browser.safebrowsing.debug to monitor this activity)

      '';
      links = {
        "2" = "https://wiki.mozilla.org/Security/Safe_Browsing";
        "4" = "https://educatedguesswork.org/posts/safe-browsing-privacy/";
        "3" = "https://support.mozilla.org/kb/how-does-phishing-and-malware-protection-work";
        "1" = "https://feeding.cloud.geek.nz/posts/how-safe-browsing-works-in-firefox/";
      };
      parrots = [
        "0400 syntax error: the parrot's passed on!"
      ];
    };
  };
  "0600" = {
    "0601" = {
      settings = [
        {
          name = "network.prefetch-next";
          enabled = true;
          value = false;
        }
      ];
      meta = {
        title = "disable link prefetching";
        description = ''
        '';
        links = {
          "1" = "https://developer.mozilla.org/docs/Web/HTTP/Link_prefetching_FAQ";
        };
      };
    };
    "0602" = {
      settings = [
        {
          name = "network.dns.disablePrefetch";
          enabled = true;
          value = true;
        }
        {
          name = "network.dns.disablePrefetchFromHTTPS";
          enabled = false;
          value = true;
        }
      ];
      meta = {
        title = "disable DNS prefetching";
        description = ''
        '';
        links = {
          "1" = "https://developer.mozilla.org/docs/Web/HTTP/Headers/X-DNS-Prefetch-Control";
        };
      };
    };
    "0603" = {
      settings = [
        {
          name = "network.predictor.enabled";
          enabled = true;
          value = false;
        }
        {
          name = "network.predictor.enable-prefetch";
          enabled = true;
          value = false;
        }
      ];
      meta = {
        title = "disable predictor / prefetching";
        description = ''
        '';
        links = {
        };
      };
    };
    "0604" = {
      settings = [
        {
          name = "network.http.speculative-parallel-limit";
          enabled = true;
          value = 0;
        }
      ];
      meta = {
        title = "disable link-mouseover opening connection to linked server";
        description = ''
        '';
        links = {
          "1" = "https://news.slashdot.org/story/15/08/14/2321202/how-to-quash-firefoxs-silent-requests";
        };
      };
    };
    "0605" = {
      settings = [
        {
          name = "browser.places.speculativeConnect.enabled";
          enabled = true;
          value = false;
        }
      ];
      meta = {
        title = "disable mousedown speculative connections on bookmarks and history [FF98+]";
        description = ''
        '';
        links = {
        };
      };
    };
    "0610" = {
      settings = [
        {
          name = "browser.send_pings";
          enabled = false;
          value = false;
        }
      ];
      meta = {
        title = "enforce no \"Hyperlink Auditing\" (click tracking)";
        description = ''
        '';
        links = {
          "1" = "https://www.bleepingcomputer.com/news/software/major-browsers-to-prevent-disabling-of-click-tracking-privacy-risk/";
        };
      };
    };
    meta = {
      title = "BLOCK IMPLICIT OUTBOUND [not explicitly asked for - e.g. clicked on]";
      description = ''
      '';
      links = {
      };
      parrots = [
        "0600 syntax error: the parrot's no more!"
      ];
    };
  };
  "0700" = {
    "0701" = {
      settings = [
        {
          name = "network.dns.disableIPv6";
          enabled = true;
          value = true;
        }
      ];
      meta = {
        title = "disable IPv6";
        description = ''
          IPv6 can be abused, especially with MAC addresses, and can leak with VPNs: assuming
          your ISP and/or router and/or website is IPv6 capable. Most sites will fall back to IPv4
          OS/network level, and/or configured properly in VPN setups. If you are not masking your IP,
          then this won't make much difference. If you are masking your IP, then it can only help.
        '';
        "NOTE" = "PHP defaults to IPv6 with \"localhost\". Use \"php -S 127.0.0.1:PORT\"";
        "STATS" = "Firefox telemetry (July 2021) shows ~10% of all connections are IPv6";
        "TEST" = "https://ipleak.org/";
        links = {
          "1" = "https://www.internetsociety.org/tag/ipv6-security/ (Myths 2,4,5,6)";
        };
      };
    };
    "0702" = {
      settings = [
        {
          name = "network.proxy.socks_remote_dns";
          enabled = true;
          value = true;
        }
      ];
      meta = {
        title = "set the proxy server to do any DNS lookups when using SOCKS";
        description = ''
          e.g. in Tor, this stops your local DNS server from knowing your Tor destination
          as a remote Tor node will handle the DNS request
        '';
        links = {
          "1" = "https://trac.torproject.org/projects/tor/wiki/doc/TorifyHOWTO/WebBrowsers";
        };
      };
    };
    "0703" = {
      settings = [
        {
          name = "network.file.disable_unc_paths";
          enabled = true;
          value = true;
        }
      ];
      meta = {
        title = "disable using UNC (Uniform Naming Convention) paths [FF61+]";
        description = ''
        '';
        "SETUP-CHROME" = "Can break extensions for profiles on network shares";
        links = {
          "1" = "https://gitlab.torproject.org/tpo/applications/tor-browser/-/issues/26424";
        };
      };
    };
    "0704" = {
      settings = [
        {
          name = "network.gio.supported-protocols";
          enabled = true;
          value = "";
        }
      ];
      meta = {
        title = "disable GIO as a potential proxy bypass vector";
        description = ''
          Gvfs/GIO has a set of supported protocols like obex, network, archive, computer,
          dav, cdda, gphoto2, trash, etc. By default only sftp is accepted (FF87+)
        '';
        links = {
          "2" = "https://en.wikipedia.org/wiki/GVfs";
          "3" = "https://en.wikipedia.org/wiki/GIO_(software)";
          "1" = "https://bugzilla.mozilla.org/1433507";
        };
      };
    };
    "0705" = {
      settings = [
        {
          name = "network.proxy.failover_direct";
          enabled = false;
          value = false;
        }
      ];
      meta = {
        title = "disable proxy direct failover for system requests [FF91+]";
        description = ''
        '';
        "SETUP-CHROME" = "If you use a proxy and you trust your extensions";
        "WARNING" = "Default true is a security feature against malicious extensions [1]";
        links = {
          "1" = "https://blog.mozilla.org/security/2021/10/25/securing-the-proxy-api-for-firefox-add-ons/";
        };
      };
    };
    "0706" = {
      settings = [
        {
          name = "network.proxy.allow_bypass";
          enabled = false;
          value = false;
        }
      ];
      meta = {
        title = "disable proxy bypass for system request failures [FF95+]";
        description = ''
          RemoteSettings, UpdateService, Telemetry [1]
        '';
        "WARNING" = "If false, this will break the fallback for some security features";
        "SETUP-CHROME" = "If you use a proxy and you understand the security impact";
        links = {
          "1" = "https://bugzilla.mozilla.org/buglist.cgi?bug_id=1732792,1733994,1733481";
        };
      };
    };
    "0710" = {
      settings = [
        {
          name = "network.trr.mode";
          enabled = false;
          value = 5;
        }
      ];
      meta = {
        title = "disable DNS-over-HTTPS (DoH) rollout [FF60+]";
        description = ''
          0=off by default, 2=TRR (Trusted Recursive Resolver) first, 3=TRR only, 5=explicitly off
          see "doh-rollout.home-region": USA 2019, Canada 2021, Russia/Ukraine 2022 [3]
        '';
        links = {
          "2" = "https://wiki.mozilla.org/Security/DOH-resolver-policy";
          "4" = "https://www.eff.org/deeplinks/2020/12/dns-doh-and-odoh-oh-my-year-review-2020";
          "1" = "https://hacks.mozilla.org/2018/05/a-cartoon-intro-to-dns-over-https/";
          "3" = "https://support.mozilla.org/en-US/kb/firefox-dns-over-https";
        };
      };
    };
    meta = {
      title = "DNS / DoH / PROXY / SOCKS / IPv6";
      description = ''
      '';
      links = {
      };
      parrots = [
        "0700 syntax error: the parrot's given up the ghost!"
      ];
    };
  };
  "0800" = {
    "0801" = {
      settings = [
        {
          name = "keyword.enabled";
          enabled = true;
          value = false;
        }
      ];
      meta = {
        title = "disable location bar using search";
        description = ''
          Don't leak URL typos to a search engine, give an error message instead
          Examples: "secretplace,com", "secretplace/com", "secretplace com", "secret place.com"
          dropdown, or using keyword search shortcuts you configure in options (e.g. "d" for DuckDuckGo)
        '';
        "NOTE" = "This does not affect explicit user action such as using search buttons in the";
        "SETUP-CHROME" = "Override this if you trust and use a privacy respecting search engine";
        links = {
        };
      };
    };
    "0802" = {
      settings = [
        {
          name = "browser.fixup.alternate.enabled";
          enabled = true;
          value = false;
        }
      ];
      meta = {
        title = "disable location bar domain guessing";
        description = ''
          domain guessing intercepts DNS "hostname not found errors" and resends a
          request (e.g. by adding www or .com). This is inconsistent use (e.g. FQDNs), does not work
          via Proxy Servers (different error), is a flawed use of DNS (TLDs: why treat .com
          as the 411 for DNS errors?), privacy issues (why connect to sites you didn't
          intend to), can leak sensitive data (e.g. query strings: e.g. Princeton attack),
          and is a security risk (e.g. common typos & malicious sites set up to exploit this)
        '';
        links = {
        };
      };
    };
    "0804" = {
      settings = [
        {
          name = "browser.search.suggest.enabled";
          enabled = true;
          value = false;
        }
        {
          name = "browser.urlbar.suggest.searches";
          enabled = true;
          value = false;
        }
      ];
      meta = {
        title = "disable live search suggestions";
        description = ''
        '';
        "NOTE" = "Both must be true for the location bar to work";
        "SETTING" = "Search>Provide search suggestions | Show search suggestions in address bar results";
        "SETUP-CHROME" = "Override these if you trust and use a privacy respecting search engine";
        links = {
        };
      };
    };
    "0805" = {
      settings = [
        {
          name = "browser.urlbar.speculativeConnect.enabled";
          enabled = true;
          value = false;
        }
      ];
      meta = {
        title = "disable location bar making speculative connections [FF56+]";
        description = ''
        '';
        links = {
          "1" = "https://bugzilla.mozilla.org/1348275";
        };
      };
    };
    "0806" = {
      settings = [
        {
          name = "browser.urlbar.dnsResolveSingleWordsAfterSearch";
          enabled = true;
          value = 0;
        }
      ];
      meta = {
        title = "disable location bar leaking single words to a DNS provider **after searching** [FF78+]";
        description = ''
          0=never resolve, 1=use heuristics, 2=always resolve
        '';
        links = {
          "1" = "https://bugzilla.mozilla.org/1642623";
        };
      };
    };
    "0807" = {
      settings = [
        {
          name = "browser.urlbar.suggest.quicksuggest.nonsponsored";
          enabled = true;
          value = false;
        }
        {
          name = "browser.urlbar.suggest.quicksuggest.sponsored";
          enabled = true;
          value = false;
        }
      ];
      meta = {
        title = "disable location bar contextual suggestions [FF92+]";
        description = ''
        '';
        "SETTING" = "Privacy & Security>Address Bar>Suggestions from...";
        links = {
          "1" = "https://blog.mozilla.org/data/2021/09/15/data-and-firefox-suggest/";
        };
      };
    };
    "0808" = {
      settings = [
        {
          name = "browser.urlbar.suggest.engines";
          enabled = false;
          value = false;
        }
      ];
      meta = {
        title = "disable tab-to-search [FF85+]";
        description = ''
          Alternatively, you can exclude on a per-engine basis by unchecking them in Options>Search
        '';
        "SETTING" = "Privacy & Security>Address Bar>When using the address bar, suggest>Search engines";
        links = {
        };
      };
    };
    "0810" = {
      settings = [
        {
          name = "browser.formfill.enable";
          enabled = true;
          value = false;
        }
      ];
      meta = {
        title = "disable search and form history";
        description = ''
        '';
        "SETUP-WEB" = "Be aware that autocomplete form data can be read by third parties [1][2]";
        "SETTING" = "Privacy & Security>History>Custom Settings>Remember search and form history";
        "NOTE" = "We also clear formdata on exit (2811)";
        links = {
          "2" = "https://bugzilla.mozilla.org/381681";
          "1" = "https://blog.mindedsecurity.com/2011/10/autocompleteagain.html";
        };
      };
    };
    "0811" = {
      settings = [
        {
          name = "extensions.formautofill.addresses.enabled";
          enabled = true;
          value = false;
        }
        {
          name = "extensions.formautofill.available";
          enabled = true;
          value = "off";
        }
        {
          name = "extensions.formautofill.creditCards.available";
          enabled = true;
          value = false;
        }
        {
          name = "extensions.formautofill.creditCards.enabled";
          enabled = true;
          value = false;
        }
        {
          name = "extensions.formautofill.heuristics.enabled";
          enabled = true;
          value = false;
        }
      ];
      meta = {
        title = "disable Form Autofill";
        description = ''
        '';
        "NOTE" = "Heuristics controls Form Autofill on forms without @autocomplete attributes";
        "SETTING" = "Privacy & Security>Forms and Autofill>Autofill addresses";
        links = {
          "1" = "https://wiki.mozilla.org/Firefox/Features/Form_Autofill";
        };
      };
    };
    "0820" = {
      settings = [
        {
          name = "layout.css.visited_links_enabled";
          enabled = false;
          value = false;
        }
      ];
      meta = {
        title = "disable coloring of visited links";
        description = ''
          redraw timing attacks were largely mitigated in FF77+ [3]. Using RFP (4501) further hampers timing
          attacks. Don't forget clearing history on exit (2811). However, social engineering [2#limits][4][5]
          and advanced targeted timing attacks could still produce usable results
        '';
        "SETUP-HARDEN" = "Bulk rapid history sniffing was mitigated in 2010 [1][2]. Slower and more expensive";
        links = {
          "4" = "https://earthlng.github.io/testpages/visited_links.html (see github wiki APPENDIX A on how to use)";
          "5" = "https://lcamtuf.blogspot.com/2016/08/css-mix-blend-mode-is-bad-for-keeping.html";
          "3" = "https://bugzilla.mozilla.org/1632765";
          "1" = "https://developer.mozilla.org/docs/Web/CSS/Privacy_and_the_:visited_selector";
          "2" = "https://dbaron.org/mozilla/visited-privacy";
        };
      };
    };
    meta = {
      title = "LOCATION BAR / SEARCH BAR / SUGGESTIONS / HISTORY / FORMS";
      description = ''
      '';
      links = {
      };
      parrots = [
        "0800 syntax error: the parrot's ceased to be!"
      ];
    };
  };
  "0900" = {
    "0903" = {
      settings = [
        {
          name = "signon.autofillForms";
          enabled = true;
          value = false;
        }
      ];
      meta = {
        title = "disable auto-filling username & password form fields";
        description = ''
          can leak in cross-site forms *and* be spoofed
        '';
        "SETTING" = "Privacy & Security>Logins and Passwords>Autofill logins and passwords";
        "NOTE" = "Username & password is still available when you enter the field";
        links = {
          "1" = "https://freedom-to-tinker.com/2017/12/27/no-boundaries-for-user-identities-web-trackers-exploit-browser-login-managers/";
          "2" = "https://homes.esat.kuleuven.be/~asenol/leaky-forms/";
        };
      };
    };
    "0904" = {
      settings = [
        {
          name = "signon.formlessCapture.enabled";
          enabled = true;
          value = false;
        }
      ];
      meta = {
        title = "disable formless login capture for Password Manager [FF51+]";
        description = ''
        '';
        links = {
        };
      };
    };
    "0905" = {
      settings = [
        {
          name = "network.auth.subresource-http-auth-allow";
          enabled = true;
          value = 1;
        }
      ];
      meta = {
        title = "limit (or disable) HTTP authentication credentials dialogs triggered by sub-resources [FF41+]";
        description = ''
          hardens against potential credentials phishing
          0 = don't allow sub-resources to open HTTP authentication credentials dialogs
          1 = don't allow cross-origin sub-resources to open HTTP authentication credentials dialogs
          2 = allow sub-resources to open HTTP authentication credentials dialogs (default)
        '';
        links = {
        };
      };
    };
    "0906" = {
      settings = [
        {
          name = "network.http.windows-sso.enabled";
          enabled = true;
          value = false;
        }
      ];
      meta = {
        title = "enforce no automatic authentication on Microsoft sites [FF91+] [WINDOWS 10+]";
        description = ''
        '';
        "SETTING" = "Privacy & Security>Logins and Passwords>Allow Windows single sign-on for...";
        links = {
          "1" = "https://support.mozilla.org/kb/windows-sso";
        };
      };
    };
    meta = {
      title = "PASSWORDS";
      description = ''
      '';
      links = {
        "1" = "https://support.mozilla.org/kb/use-primary-password-protect-stored-logins-and-pas";
      };
      parrots = [
        "0900 syntax error: the parrot's expired!"
      ];
    };
  };
  "1000" = {
    "1001" = {
      settings = [
        {
          name = "browser.cache.disk.enable";
          enabled = true;
          value = false;
        }
      ];
      meta = {
        title = "disable disk cache";
        description = ''
        '';
        "SETUP-CHROME" = "If you think disk cache helps perf, then feel free to override this";
        "NOTE" = "We also clear cache on exit (2811)";
        links = {
        };
      };
    };
    "1002" = {
      settings = [
        {
          name = "browser.privatebrowsing.forceMediaMemoryCache";
          enabled = true;
          value = true;
        }
        {
          name = "media.memory_cache_max_size";
          enabled = true;
          value = 65536;
        }
      ];
      meta = {
        title = "disable media cache from writing to disk in Private Browsing";
        description = ''
        '';
        "NOTE" = "MSE (Media Source Extensions) are already stored in-memory in PB";
        links = {
        };
      };
    };
    "1003" = {
      settings = [
        {
          name = "browser.sessionstore.privacy_level";
          enabled = true;
          value = 2;
        }
      ];
      meta = {
        title = "disable storing extra session data [SETUP-CHROME]";
        description = ''
          define on which sites to save extra session data such as form content, cookies and POST data
          0=everywhere, 1=unencrypted sites, 2=nowhere
        '';
        links = {
        };
      };
    };
    "1004" = {
      settings = [
        {
          name = "browser.sessionstore.interval";
          enabled = true;
          value = 30000;
        }
      ];
      meta = {
        title = "set the minimum interval between session save operations";
        description = ''
          Increasing this can help on older machines and some websites, as well as reducing writes [1]
        '';
        links = {
          "1" = "https://bugzilla.mozilla.org/1304389";
        };
      };
    };
    "1005" = {
      settings = [
        {
          name = "toolkit.winRegisterApplicationRestart";
          enabled = true;
          value = false;
        }
      ];
      meta = {
        title = "disable automatic Firefox start and session restore after reboot [FF62+] [WINDOWS]";
        description = ''
        '';
        links = {
          "1" = "https://bugzilla.mozilla.org/603903";
        };
      };
    };
    "1006" = {
      settings = [
        {
          name = "browser.shell.shortcutFavicons";
          enabled = true;
          value = false;
        }
      ];
      meta = {
        title = "disable favicons in shortcuts";
        description = ''
          URL shortcuts use a cached randomly named .ico file which is stored in your
          profile/shortcutCache directory. The .ico remains after the shortcut is deleted
          If set to false then the shortcuts use a generic Firefox icon
        '';
        links = {
        };
      };
    };
    meta = {
      title = "DISK AVOIDANCE";
      description = ''
      '';
      links = {
      };
      parrots = [
        "1000 syntax error: the parrot's gone to meet 'is maker!"
      ];
    };
  };
  "1200" = {
    "1201" = {
      settings = [
        {
          name = "security.ssl.require_safe_negotiation";
          enabled = true;
          value = true;
        }
      ];
      meta = {
        title = "require safe negotiation";
        description = ''
          Blocks connections to servers that don't support RFC 5746 [2] as they're potentially vulnerable to a
          MiTM attack [3]. A server without RFC 5746 can be safe from the attack if it disables renegotiations
          but the problem is that the browser can't know that. Setting this pref to true is the only way for the
          browser to ensure there will be no unsafe renegotiations on the channel between the browser and the server
        '';
        "STATS" = "SSL Labs (July 2021) reports over 99% of top sites have secure renegotiation [4]";
        "SETUP-WEB" = "SSL_ERROR_UNSAFE_NEGOTIATION: is it worth overriding this for that one site?";
        links = {
          "1" = "https://wiki.mozilla.org/Security:Renegotiation";
          "4" = "https://www.ssllabs.com/ssl-pulse/";
          "3" = "https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2009-3555";
          "2" = "https://datatracker.ietf.org/doc/html/rfc5746";
        };
      };
    };
    "1206" = {
      settings = [
        {
          name = "security.tls.enable_0rtt_data";
          enabled = true;
          value = false;
        }
      ];
      meta = {
        title = "disable TLS1.3 0-RTT (round-trip time) [FF51+]";
        description = ''
          This data is not forward secret, as it is encrypted solely under keys derived using
          the offered PSK. There are no guarantees of non-replay between connections
        '';
        links = {
          "2" = "https://www.rfc-editor.org/rfc/rfc9001.html#name-replay-attacks-with-0-rtt";
          "3" = "https://blog.cloudflare.com/tls-1-3-overview-and-q-and-a/";
          "1" = "https://github.com/tlswg/tls13-spec/issues/1001";
        };
      };
    };
    "1211" = {
      settings = [
        {
          name = "security.OCSP.enabled";
          enabled = true;
          value = 1;
        }
      ];
      meta = {
        title = "enforce OCSP fetching to confirm current validity of certificates";
        description = ''
          0=disabled, 1=enabled (default), 2=enabled for EV certificates only
          OCSP (non-stapled) leaks information about the sites you visit to the CA (cert authority)
          It's a trade-off between security (checking) and privacy (leaking info to the CA)
        '';
        "NOTE" = "This pref only controls OCSP fetching and does not affect OCSP stapling";
        "SETTING" = "Privacy & Security>Security>Certificates>Query OCSP responder servers...";
        links = {
          "1" = "https://en.wikipedia.org/wiki/Ocsp";
        };
      };
    };
    "1212" = {
      settings = [
        {
          name = "security.OCSP.require";
          enabled = true;
          value = true;
        }
      ];
      meta = {
        title = "set OCSP fetch failures (non-stapled, see 1211) to hard-fail [SETUP-WEB]";
        description = ''
          When a CA cannot be reached to validate a cert, Firefox just continues the connection (=soft-fail)
          Setting this pref to true tells Firefox to instead terminate the connection (=hard-fail)
          It is pointless to soft-fail when an OCSP fetch fails: you cannot confirm a cert is still valid (it
          could have been revoked) and/or you could be under attack (e.g. malicious blocking of OCSP servers)
        '';
        links = {
          "2" = "https://www.imperialviolet.org/2014/04/19/revchecking.html";
          "1" = "https://blog.mozilla.org/security/2013/07/29/ocsp-stapling-in-firefox/";
        };
      };
    };
    "1221" = {
      settings = [
        {
          name = "security.family_safety.mode";
          enabled = true;
          value = 0;
        }
      ];
      meta = {
        title = "disable Windows 8.1's Microsoft Family Safety cert [FF50+] [WINDOWS]";
        description = ''
          0=disable detecting Family Safety mode and importing the root
          1=only attempt to detect Family Safety mode (don't import the root)
          2=detect Family Safety mode and import the root
        '';
        links = {
          "1" = "https://gitlab.torproject.org/tpo/applications/tor-browser/-/issues/21686";
        };
      };
    };
    "1223" = {
      settings = [
        {
          name = "security.cert_pinning.enforcement_level";
          enabled = true;
          value = 2;
        }
      ];
      meta = {
        title = "enable strict PKP (Public Key Pinning)";
        description = ''
          0=disabled, 1=allow user MiTM (default; such as your antivirus), 2=strict
          your web browsing by inspecting ALL your web traffic, then override to current default
        '';
        "SETUP-WEB" = "MOZILLA_PKIX_ERROR_KEY_PINNING_FAILURE: If you rely on an AV (antivirus) to protect";
        links = {
        };
      };
    };
    "1224" = {
      settings = [
        {
          name = "security.remote_settings.crlite_filters.enabled";
          enabled = true;
          value = true;
        }
        {
          name = "security.pki.crlite_mode";
          enabled = true;
          value = 2;
        }
      ];
      meta = {
        title = "enable CRLite [FF73+]";
        description = ''
          0 = disabled
          1 = consult CRLite but only collect telemetry
          2 = consult CRLite and enforce both "Revoked" and "Not Revoked" results
          3 = consult CRLite and enforce "Not Revoked" results, but defer to OCSP for "Revoked" (FF99+, default FF100+)
        '';
        links = {
          "2" = "https://blog.mozilla.org/security/tag/crlite/";
          "1" = "https://bugzilla.mozilla.org/buglist.cgi?bug_id=1429800,1670985,1753071";
        };
      };
    };
    "1241" = {
      settings = [
        {
          name = "security.mixed_content.block_display_content";
          enabled = true;
          value = true;
        }
      ];
      meta = {
        title = "disable insecure passive content (such as images) on https pages [SETUP-WEB]";
        description = ''
        '';
        links = {
        };
      };
    };
    "1244" = {
      settings = [
        {
          name = "dom.security.https_only_mode";
          enabled = true;
          value = true;
        }
        {
          name = "dom.security.https_only_mode_pbm";
          enabled = false;
          value = true;
        }
      ];
      meta = {
        title = "enable HTTPS-Only mode in all windows [FF76+]";
        description = ''
          When the top-level is HTTPS, insecure subresources are also upgraded (silent fail)
        '';
        "TEST" = "http://example.com [upgrade]";
        "TEST] http://httpforever.com/ [no upgrade" = "***/";
        "SETTING" = "Privacy & Security>HTTPS-Only Mode (and manage exceptions)";
        links = {
        };
      };
    };
    "1245" = {
      settings = [
        {
          name = "dom.security.https_only_mode.upgrade_local";
          enabled = false;
          value = true;
        }
      ];
      meta = {
        title = "enable HTTPS-Only mode for local resources [FF77+]";
        description = ''
        '';
        links = {
        };
      };
    };
    "1246" = {
      settings = [
        {
          name = "dom.security.https_only_mode_send_http_background_request";
          enabled = true;
          value = false;
        }
      ];
      meta = {
        title = "disable HTTP background requests [FF82+]";
        description = ''
          When attempting to upgrade, if the server doesn't respond within 3 seconds, Firefox sends
          a top-level HTTP request without path in order to check if the server supports HTTPS or not
          This is done to avoid waiting for a timeout which takes 90 seconds
        '';
        links = {
          "1" = "https://bugzilla.mozilla.org/buglist.cgi?bug_id=1642387,1660945";
        };
      };
    };
    "1270" = {
      settings = [
        {
          name = "security.ssl.treat_unsafe_negotiation_as_broken";
          enabled = true;
          value = true;
        }
      ];
      meta = {
        title = "display warning on the padlock for \"broken security\" (if 1201 is false)";
        description = ''
          Bug: warning padlock not indicated for subresources on a secure page! [2]
        '';
        links = {
          "1" = "https://wiki.mozilla.org/Security:Renegotiation";
          "2" = "https://bugzilla.mozilla.org/1353705";
        };
      };
    };
    "1271" = {
      settings = [
        {
          name = "browser.ssl_override_behavior";
          enabled = true;
          value = 1;
        }
      ];
      meta = {
        title = "control \"Add Security Exception\" dialog on SSL warnings";
        description = ''
          0=do neither, 1=pre-populate url, 2=pre-populate url + pre-fetch cert (default)
        '';
        links = {
          "1" = "https://github.com/pyllyukko/user.js/issues/210";
        };
      };
    };
    "1272" = {
      settings = [
        {
          name = "browser.xul.error_pages.expert_bad_cert";
          enabled = true;
          value = true;
        }
      ];
      meta = {
        title = "display advanced information on Insecure Connection warning pages";
        description = ''
          only works when it's possible to add an exception
          i.e. it doesn't work for HSTS discrepancies (https://subdomain.preloaded-hsts.badssl.com/)
        '';
        "TEST" = "https://expired.badssl.com/";
        links = {
        };
      };
    };
    meta = {
      title = "HTTPS (SSL/TLS / OCSP / CERTS / HPKP)";
      description = ''
        Your cipher and other settings can be used in server side fingerprinting
      '';
      "TEST" = "https://ja3er.com/";
      links = {
        "1" = "https://www.securityartwork.es/2017/02/02/tls-client-fingerprinting-with-bro/";
      };
      parrots = [
        "1200 syntax error: the parrot's a stiff!"
      ];
    };
  };
  "1400" = {
    "1401" = {
      settings = [
        {
          name = "gfx.font_rendering.opentype_svg.enabled";
          enabled = true;
          value = false;
        }
      ];
      meta = {
        title = "disable rendering of SVG OpenType fonts";
        description = ''
        '';
        links = {
        };
      };
    };
    "1402" = {
      settings = [
        {
          name = "layout.css.font-visibility.private";
          enabled = false;
          value = 1;
        }
        {
          name = "layout.css.font-visibility.standard";
          enabled = false;
          value = 1;
        }
        {
          name = "layout.css.font-visibility.trackingprotection";
          enabled = false;
          value = 1;
        }
      ];
      meta = {
        title = "limit font visibility (Windows, Mac, some Linux) [FF94+]";
        description = ''
          Uses hardcoded lists with two parts: kBaseFonts + kLangPackFonts [1], bundled fonts are auto-allowed
          In normal windows: uses the first applicable: RFP (4506) over TP over Standard
          In Private Browsing windows: uses the most restrictive between normal and private
          1=only base system fonts, 2=also fonts from optional language packs, 3=also user-installed fonts
        '';
        links = {
          "1" = "https://searchfox.org/mozilla-central/search?path=StandardFonts*.inc";
        };
      };
    };
    meta = {
      title = "FONTS";
      description = ''
      '';
      links = {
      };
      parrots = [
        "1400 syntax error: the parrot's bereft of life!"
      ];
    };
  };
  "1600" = {
    "1601" = {
      settings = [
        {
          name = "network.http.referer.XOriginPolicy";
          enabled = true;
          value = 2;
        }
      ];
      meta = {
        title = "control when to send a cross-origin referer";
        description = ''
          0=always (default), 1=only if base domains match, 2=only if hosts match
          If "2" is too strict, then override to "0" and use Smart Referer extension (Strict mode + add exceptions)
        '';
        "SETUP-WEB" = "Breakage: older modems/routers and some sites e.g banks, vimeo, icloud, instagram";
        links = {
        };
      };
    };
    "1602" = {
      settings = [
        {
          name = "network.http.referer.XOriginTrimmingPolicy";
          enabled = true;
          value = 2;
        }
      ];
      meta = {
        title = "control the amount of cross-origin information to send [FF52+]";
        description = ''
          0=send full URI (default), 1=scheme+host+port+path, 2=scheme+host+port
        '';
        links = {
        };
      };
    };
    meta = {
      title = "HEADERS / REFERERS";
      description = ''
        full URI: https://example.com:8888/foo/bar.html?id=1234
        scheme+host+port+path: https://example.com:8888/foo/bar.html
        scheme+host+port: https://example.com:8888
      '';
      links = {
        "1" = "https://feeding.cloud.geek.nz/posts/tweaking-referrer-for-privacy-in-firefox/";
      };
      parrots = [
        "1600 syntax error: the parrot rests in peace!"
      ];
    };
  };
  "1700" = {
    "1701" = {
      settings = [
        {
          name = "privacy.userContext.enabled";
          enabled = true;
          value = true;
        }
        {
          name = "privacy.userContext.ui.enabled";
          enabled = true;
          value = true;
        }
      ];
      meta = {
        title = "enable Container Tabs and its UI setting [FF50+]";
        description = ''
          https://wiki.mozilla.org/Security/Contextual_Identity_Project/Containers
        '';
        "SETTING" = "General>Tabs>Enable Container Tabs";
        links = {
        };
      };
    };
    "1702" = {
      settings = [
        {
          name = "privacy.userContext.newTabContainerOnLeftClick.enabled";
          enabled = false;
          value = true;
        }
      ];
      meta = {
        title = "set behavior on \"+ Tab\" button to display container menu on left click [FF74+]";
        description = ''
        '';
        "SETTING" = "General>Tabs>Enable Container Tabs>Settings>Select a container for each new tab";
        "NOTE" = "The menu is always shown on long press and right click";
        links = {
        };
      };
    };
    meta = {
      title = "CONTAINERS";
      description = ''
      '';
      links = {
      };
      parrots = [
        "1700 syntax error: the parrot's bit the dust!"
      ];
    };
  };
  "2000" = {
    "2001" = {
      settings = [
        {
          name = "media.peerconnection.enabled";
          enabled = false;
          value = false;
        }
      ];
      meta = {
        title = "disable WebRTC (Web Real-Time Communication)";
        description = ''
          Firefox uses mDNS hostname obfuscation on desktop (except Windows7/8) and the
          private IP is NEVER exposed, except if required in TRUSTED scenarios; i.e. after
          you grant device (microphone or camera) access
        '';
        "TEST" = "https://browserleaks.com/webrtc";
        "SETUP-HARDEN" = "Test first. Windows7/8 users only: behind a proxy who never use WebRTC";
        links = {
          "1" = "https://groups.google.com/g/discuss-webrtc/c/6stQXi72BEU/m/2FwZd24UAQAJ";
          "2" = "https://datatracker.ietf.org/doc/html/draft-ietf-mmusic-mdns-ice-candidates#section-3.1.1";
        };
      };
    };
    "2002" = {
      settings = [
        {
          name = "media.peerconnection.ice.proxy_only_if_behind_proxy";
          enabled = true;
          value = true;
        }
      ];
      meta = {
        title = "force WebRTC inside the proxy [FF70+]";
        description = ''
        '';
        links = {
        };
      };
    };
    "2003" = {
      settings = [
        {
          name = "media.peerconnection.ice.default_address_only";
          enabled = true;
          value = true;
        }
      ];
      meta = {
        title = "force a single network interface for ICE candidates generation [FF42+]";
        description = ''
          When using a system-wide proxy, it uses the proxy interface
        '';
        links = {
          "1" = "https://developer.mozilla.org/en-US/docs/Web/API/RTCIceCandidate";
          "2" = "https://wiki.mozilla.org/Media/WebRTC/Privacy";
        };
      };
    };
    "2004" = {
      settings = [
        {
          name = "media.peerconnection.ice.no_host";
          enabled = false;
          value = true;
        }
      ];
      meta = {
        title = "force exclusion of private IPs from ICE candidates [FF51+]";
        description = ''
          grant device access, but often results in breakage on video-conferencing platforms
        '';
        "SETUP-HARDEN" = "This will protect your private IP even in TRUSTED scenarios after you";
        links = {
        };
      };
    };
    "2020" = {
      settings = [
        {
          name = "media.gmp-provider.enabled";
          enabled = false;
          value = false;
        }
      ];
      meta = {
        title = "disable GMP (Gecko Media Plugins)";
        description = ''
        '';
        links = {
          "1" = "https://wiki.mozilla.org/GeckoMediaPlugins";
        };
      };
    };
    "2021" = {
      settings = [
        {
          name = "media.gmp-widevinecdm.enabled";
          enabled = false;
          value = false;
        }
      ];
      meta = {
        title = "disable widevine CDM (Content Decryption Module)";
        description = ''
        '';
        "NOTE" = "This is covered by the EME master switch (2022)";
        links = {
        };
      };
    };
    "2022" = {
      settings = [
        {
          name = "media.eme.enabled";
          enabled = true;
          value = false;
        }
        {
          name = "browser.eme.ui.enabled";
          enabled = false;
          value = false;
        }
      ];
      meta = {
        title = "disable all DRM content (EME: Encryption Media Extension)";
        description = ''
          Optionally hide the setting which also disables the DRM prompt
        '';
        "SETTING" = "General>DRM Content>Play DRM-controlled content";
        "SETUP-WEB" = "e.g. Netflix, Amazon Prime, Hulu, HBO, Disney+, Showtime, Starz, DirectTV";
        "TEST" = "https://bitmovin.com/demos/drm";
        links = {
          "1" = "https://www.eff.org/deeplinks/2017/10/drms-dead-canary-how-we-just-lost-web-what-we-learned-it-and-what-we-need-do-next";
        };
      };
    };
    meta = {
      title = "PLUGINS / MEDIA / WEBRTC";
      description = ''
      '';
      links = {
      };
      parrots = [
        "2000 syntax error: the parrot's snuffed it!"
      ];
    };
  };
  "2400" = {
    "2401" = {
      settings = [
        {
          name = "dom.disable_beforeunload";
          enabled = true;
          value = true;
        }
      ];
      meta = {
        title = "disable \"Confirm you want to leave\" dialog on page close";
        description = ''
          Does not prevent JS leaks of the page close event
        '';
        links = {
          "1" = "https://developer.mozilla.org/docs/Web/Events/beforeunload";
        };
      };
    };
    "2402" = {
      settings = [
        {
          name = "dom.disable_window_move_resize";
          enabled = true;
          value = true;
        }
      ];
      meta = {
        title = "prevent scripts from moving and resizing open windows";
        description = ''
        '';
        links = {
        };
      };
    };
    "2403" = {
      settings = [
        {
          name = "dom.disable_open_during_load";
          enabled = true;
          value = true;
        }
      ];
      meta = {
        title = "block popup windows";
        description = ''
        '';
        "SETTING" = "Privacy & Security>Permissions>Block pop-up windows";
        links = {
        };
      };
    };
    "2404" = {
      settings = [
        {
          name = "dom.popup_allowed_events";
          enabled = true;
          value = "click dblclick mousedown pointerdown";
        }
      ];
      meta = {
        title = "limit events that can cause a popup [SETUP-WEB]";
        description = ''
        '';
        links = {
        };
      };
    };
    meta = {
      title = "DOM (DOCUMENT OBJECT MODEL)";
      description = ''
      '';
      links = {
      };
      parrots = [
        "2400 syntax error: the parrot's kicked the bucket!"
      ];
    };
  };
  "2600" = {
    "2601" = {
      settings = [
        {
          name = "accessibility.force_disabled";
          enabled = true;
          value = 1;
        }
      ];
      meta = {
        title = "prevent accessibility services from accessing your browser [RESTART]";
        description = ''
        '';
        links = {
          "1" = "https://support.mozilla.org/kb/accessibility-services";
        };
      };
    };
    "2602" = {
      settings = [
        {
          name = "beacon.enabled";
          enabled = true;
          value = false;
        }
      ];
      meta = {
        title = "disable sending additional analytics to web servers";
        description = ''
        '';
        links = {
          "1" = "https://developer.mozilla.org/docs/Web/API/Navigator/sendBeacon";
        };
      };
    };
    "2603" = {
      settings = [
        {
          name = "browser.helperApps.deleteTempFileOnExit";
          enabled = true;
          value = true;
        }
      ];
      meta = {
        title = "remove temp files opened with an external application";
        description = ''
        '';
        links = {
          "1" = "https://bugzilla.mozilla.org/302433";
        };
      };
    };
    "2604" = {
      settings = [
        {
          name = "browser.pagethumbnails.capturing_disabled";
          enabled = true;
          value = true;
        }
      ];
      meta = {
        title = "disable page thumbnail collection";
        description = ''
        '';
        links = {
        };
      };
    };
    "2606" = {
      settings = [
        {
          name = "browser.uitour.enabled";
          enabled = true;
          value = false;
        }
        {
          name = "browser.uitour.url";
          enabled = true;
          value = "";
        }
      ];
      meta = {
        title = "disable UITour backend so there is no chance that a remote page can use it";
        description = ''
        '';
        links = {
        };
      };
    };
    "2607" = {
      settings = [
        {
          name = "devtools.chrome.enabled";
          enabled = true;
          value = false;
        }
      ];
      meta = {
        title = "disable various developer tools in browser context";
        description = ''
        '';
        "SETTING" = "Devtools>Advanced Settings>Enable browser chrome and add-on debugging toolboxes";
        links = {
          "1" = "https://github.com/pyllyukko/user.js/issues/179#issuecomment-246468676";
        };
      };
    };
    "2608" = {
      settings = [
        {
          name = "devtools.debugger.remote-enabled";
          enabled = true;
          value = false;
        }
      ];
      meta = {
        title = "reset remote debugging to disabled";
        description = ''
        '';
        links = {
          "1" = "https://gitlab.torproject.org/tpo/applications/tor-browser/-/issues/16222";
        };
      };
    };
    "2611" = {
      settings = [
        {
          name = "middlemouse.contentLoadURL";
          enabled = true;
          value = false;
        }
      ];
      meta = {
        title = "disable middle mouse click opening links from clipboard";
        description = ''
        '';
        links = {
          "1" = "https://gitlab.torproject.org/tpo/applications/tor-browser/-/issues/10089";
        };
      };
    };
    "2615" = {
      settings = [
        {
          name = "permissions.default.shortcuts";
          enabled = false;
          value = 2;
        }
      ];
      meta = {
        title = "disable websites overriding Firefox's keyboard shortcuts [FF58+]";
        description = ''
          0 (default) or 1=allow, 2=block
        '';
        "SETTING" = "to add site exceptions: Ctrl+I>Permissions>Override Keyboard Shortcuts";
        links = {
        };
      };
    };
    "2616" = {
      settings = [
        {
          name = "permissions.manager.defaultsUrl";
          enabled = true;
          value = "";
        }
      ];
      meta = {
        title = "remove special permissions for certain mozilla domains [FF35+]";
        description = ''
        '';
        links = {
          "1" = "resource://app/defaults/permissions";
        };
      };
    };
    "2617" = {
      settings = [
        {
          name = "webchannel.allowObject.urlWhitelist";
          enabled = true;
          value = "";
        }
      ];
      meta = {
        title = "remove webchannel whitelist";
        description = ''
        '';
        links = {
        };
      };
    };
    "2619" = {
      settings = [
        {
          name = "network.IDN_show_punycode";
          enabled = true;
          value = true;
        }
      ];
      meta = {
        title = "use Punycode in Internationalized Domain Names to eliminate possible spoofing";
        description = ''
        '';
        "SETUP-WEB" = "Might be undesirable for non-latin alphabet users since legitimate IDN's are also punycoded";
        "TEST" = "https://www.xn--80ak6aa92e.com/ (www.apple.com)";
        links = {
          "2" = "https://en.wikipedia.org/wiki/IDN_homograph_attack";
          "1" = "https://wiki.mozilla.org/IDN_Display_Algorithm";
          "4" = "https://www.xudongz.com/blog/2017/idn-phishing/";
          "3" = "https://cve.mitre.org/cgi-bin/cvekey.cgi?keyword=punycode+firefox";
        };
      };
    };
    "2620" = {
      settings = [
        {
          name = "pdfjs.disabled";
          enabled = true;
          value = false;
        }
        {
          name = "pdfjs.enableScripting";
          enabled = true;
          value = false;
        }
      ];
      meta = {
        title = "enforce PDFJS, disable PDFJS scripting [SETUP-CHROME]";
        description = ''
          This setting controls if the option "Display in Firefox" is available in the setting below
            and by effect controls whether PDFs are handled in-browser or externally ("Ask" or "Open With")
          PROS: pdfjs is lightweight, open source, and more secure/vetted than most
            Exploits are rare (one serious case in seven years), treated seriously and patched quickly.
            It doesn't break "state separation" of browser content (by not sharing with OS, independent apps).
            It maintains disk avoidance and application data isolation. It's convenient. You can still save to disk.
          CONS: You may prefer a different pdf reader for security reasons
          CAVEAT: JS can still force a pdf to open in-browser by bundling its own code
        '';
        "SETTING" = "General>Applications>Portable Document Format (PDF)";
        links = {
        };
      };
    };
    "2621" = {
      settings = [
        {
          name = "network.protocol-handler.external.ms-windows-store";
          enabled = true;
          value = false;
        }
      ];
      meta = {
        title = "disable links launching Windows Store on Windows 8/8.1/10 [WINDOWS]";
        description = ''
        '';
        links = {
        };
      };
    };
    "2623" = {
      settings = [
        {
          name = "permissions.delegation.enabled";
          enabled = true;
          value = false;
        }
      ];
      meta = {
        title = "disable permissions delegation [FF73+]";
        description = ''
          Currently applies to cross-origin geolocation, camera, mic and screen-sharing
          permissions, and fullscreen requests. Disabling delegation means any prompts
          for these will show/use their correct 3rd party origin
        '';
        links = {
          "1" = "https://groups.google.com/forum/#!topic/mozilla.dev.platform/BdFOMAuCGW8/discussion";
        };
      };
    };
    "2651" = {
      settings = [
        {
          name = "browser.download.useDownloadDir";
          enabled = true;
          value = false;
        }
      ];
      meta = {
        title = "enable user interaction for security by always asking where to download";
        description = ''
        '';
        "SETUP-CHROME" = "On Android this blocks longtapping and saving images";
        "SETTING" = "General>Downloads>Always ask you where to save files";
        links = {
        };
      };
    };
    "2652" = {
      settings = [
        {
          name = "browser.download.alwaysOpenPanel";
          enabled = true;
          value = false;
        }
      ];
      meta = {
        title = "disable downloads panel opening on every download [FF96+]";
        description = ''
        '';
        links = {
        };
      };
    };
    "2653" = {
      settings = [
        {
          name = "browser.download.manager.addToRecentDocs";
          enabled = true;
          value = false;
        }
      ];
      meta = {
        title = "disable adding downloads to the system's \"recent documents\" list";
        description = ''
        '';
        links = {
        };
      };
    };
    "2654" = {
      settings = [
        {
          name = "browser.download.always_ask_before_handling_new_types";
          enabled = true;
          value = true;
        }
      ];
      meta = {
        title = "enable user interaction for security by always asking how to handle new mimetypes [FF101+]";
        description = ''
        '';
        "SETTING" = "General>Files and Applications>What should Firefox do with other files";
        links = {
        };
      };
    };
    "2660" = {
      settings = [
        {
          name = "extensions.enabledScopes";
          enabled = true;
          value = 5;
        }
        {
          name = "extensions.autoDisableScopes";
          enabled = true;
          value = 15;
        }
      ];
      meta = {
        title = "lock down allowed extension directories";
        description = ''
          XPI files which are installed outside of profile and application directories
        '';
        "SETUP-CHROME" = "This will break extensions, language packs, themes and any other";
        links = {
          "1" = "https://archive.is/DYjAM (archived)";
        };
      };
    };
    "2661" = {
      settings = [
        {
          name = "extensions.postDownloadThirdPartyPrompt";
          enabled = true;
          value = false;
        }
      ];
      meta = {
        title = "disable bypassing 3rd party extension install prompts [FF82+]";
        description = ''
        '';
        links = {
          "1" = "https://bugzilla.mozilla.org/buglist.cgi?bug_id=1659530,1681331";
        };
      };
    };
    "2662" = {
      settings = [
        {
          name = "extensions.webextensions.restrictedDomains";
          enabled = false;
          value = "";
        }
      ];
      meta = {
        title = "disable webextension restrictions on certain mozilla domains (you also need 4503) [FF60+]";
        description = ''
        '';
        links = {
          "1" = "https://bugzilla.mozilla.org/buglist.cgi?bug_id=1384330,1406795,1415644,1453988";
        };
      };
    };
    meta = {
      title = "MISCELLANEOUS";
      description = ''
      '';
      links = {
      };
      parrots = [
        "2600 syntax error: the parrot's run down the curtain!"
      ];
    };
  };
  "2700" = {
    "2701" = {
      settings = [
        {
          name = "browser.contentblocking.category";
          enabled = true;
          value = "strict";
        }
      ];
      meta = {
        title = "enable ETP Strict Mode [FF86+]";
        description = ''
          ETP Strict Mode enables Total Cookie Protection (TCP)
          cross-site state tracking e.g. exceptions for SiteA and SiteB means PartyC on both sites is shared
        '';
        "NOTE" = "Adding site exceptions disables all ETP protections for that site and increases the risk of";
        "SETTING" = "to manage site exceptions: Options>Privacy & Security>Enhanced Tracking Protection>Manage Exceptions";
        links = {
          "1" = "https://blog.mozilla.org/security/2021/02/23/total-cookie-protection/";
        };
      };
    };
    "2702" = {
      settings = [
        {
          name = "privacy.antitracking.enableWebcompat";
          enabled = false;
          value = false;
        }
      ];
      meta = {
        title = "disable ETP web compat features [FF93+]";
        description = ''
          Opener and redirect heuristics are granted for 30 days, see [3]
        '';
        "SETUP-HARDEN" = "Includes skip lists, heuristics (SmartBlock) and automatic grants";
        links = {
          "3" = "https://developer.mozilla.org/en-US/docs/Web/Privacy/State_Partitioning#storage_access_heuristics";
          "1" = "https://blog.mozilla.org/security/2021/07/13/smartblock-v2/";
          "2" = "https://hg.mozilla.org/mozilla-central/rev/e5483fd469ab#l4.12";
        };
      };
    };
    "2710" = {
      settings = [
        {
          name = "privacy.partition.serviceWorkers";
          enabled = true;
          value = true;
        }
      ];
      meta = {
        title = "enable state partitioning of service workers [FF96+]";
        description = ''
        '';
        links = {
        };
      };
    };
    meta = {
      title = "ETP (ENHANCED TRACKING PROTECTION)";
      description = ''
      '';
      links = {
      };
      parrots = [
        "2700 syntax error: the parrot's joined the bleedin' choir invisible!"
      ];
    };
  };
  "2800" = {
    "2810" = {
      settings = [
        {
          name = "privacy.sanitize.sanitizeOnShutdown";
          enabled = true;
          value = true;
        }
      ];
      meta = {
        title = "enable Firefox to clear items on shutdown";
        description = ''
        '';
        "SETTING" = "Privacy & Security>History>Custom Settings>Clear history when Firefox closes | Settings";
        links = {
        };
      };
    };
    "2811" = {
      settings = [
        {
          name = "privacy.clearOnShutdown.cache";
          enabled = true;
          value = true;
        }
        {
          name = "privacy.clearOnShutdown.downloads";
          enabled = true;
          value = true;
        }
        {
          name = "privacy.clearOnShutdown.formdata";
          enabled = true;
          value = true;
        }
        {
          name = "privacy.clearOnShutdown.history";
          enabled = true;
          value = true;
        }
        {
          name = "privacy.clearOnShutdown.sessions";
          enabled = true;
          value = true;
        }
        {
          name = "privacy.clearOnShutdown.siteSettings";
          enabled = false;
          value = false;
        }
      ];
      meta = {
        title = "set/enforce what items to clear on shutdown (if 2810 is true) [SETUP-CHROME]";
        description = ''
        '';
        "NOTE" = "\"sessions\": Active Logins: refers to HTTP Basic Authentication [1], not logins via cookies";
        links = {
          "1" = "https://en.wikipedia.org/wiki/Basic_access_authentication";
        };
      };
    };
    "2812" = {
      settings = [
        {
          name = "privacy.clearOnShutdown.openWindows";
          enabled = false;
          value = true;
        }
      ];
      meta = {
        title = "set Session Restore to clear on shutdown (if 2810 is true) [FF34+]";
        description = ''
        '';
        "NOTE" = "If true, this prevents resuming from crashes (also see 5008)";
        links = {
        };
      };
    };
    "2815" = {
      settings = [
        {
          name = "privacy.clearOnShutdown.cookies";
          enabled = true;
          value = true;
        }
        {
          name = "privacy.clearOnShutdown.offlineApps";
          enabled = true;
          value = true;
        }
      ];
      meta = {
        title = "set \"Cookies\" and \"Site Data\" to clear on shutdown (if 2810 is true) [SETUP-CHROME]";
        description = ''
          serviceWorkers require an "Allow" permission. For cross-domain logins, add exceptions for
          both sites e.g. https://www.youtube.com (site) + https://accounts.google.com (single sign on)
        '';
        "WARNING" = "Be selective with what sites you \"Allow\", as they also disable partitioning (1767271)";
        "SETTING" = "to manage site exceptions: Options>Privacy & Security>Permissions>Settings";
        "NOTE" = "\"offlineApps\": Offline Website Data: localStorage, service worker cache, QuotaManager (IndexedDB, asm-cache)";
        links = {
        };
      };
    };
    "2816" = {
      settings = [
        {
          name = "privacy.clearsitedata.cache.enabled";
          enabled = false;
          value = true;
        }
      ];
      meta = {
        title = "set cache to clear on exit [FF96+]";
        description = ''
        '';
        "NOTE" = "We already disable disk cache (1001) and clear on exit (2811) which is more robust";
        links = {
          "1" = "https://bugzilla.mozilla.org/1671182";
        };
      };
    };
    "2820" = {
      settings = [
        {
          name = "privacy.cpd.cache";
          enabled = true;
          value = true;
        }
        {
          name = "privacy.cpd.formdata";
          enabled = true;
          value = true;
        }
        {
          name = "privacy.cpd.history";
          enabled = true;
          value = true;
        }
        {
          name = "privacy.cpd.sessions";
          enabled = true;
          value = true;
        }
        {
          name = "privacy.cpd.offlineApps";
          enabled = true;
          value = false;
        }
        {
          name = "privacy.cpd.cookies";
          enabled = true;
          value = false;
        }
        {
          name = "privacy.cpd.downloads";
          enabled = false;
          value = true;
        }
        {
          name = "privacy.cpd.openWindows";
          enabled = false;
          value = false;
        }
        {
          name = "privacy.cpd.passwords";
          enabled = false;
          value = false;
        }
        {
          name = "privacy.cpd.siteSettings";
          enabled = false;
          value = false;
        }
      ];
      meta = {
        title = "reset default items to clear with Ctrl-Shift-Del [SETUP-CHROME]";
        description = ''
          This dialog can also be accessed from the menu History>Clear Recent History
          Firefox remembers your last choices. This will reset them when you start Firefox
          for "Clear Recent History" is opened, it is synced to the same as "history"
        '';
        "NOTE" = "Regardless of what you set \"downloads\" to, as soon as the dialog";
        links = {
        };
      };
    };
    "2822" = {
      settings = [
        {
          name = "privacy.sanitize.timeSpan";
          enabled = true;
          value = 0;
        }
      ];
      meta = {
        title = "reset default \"Time range to clear\" for \"Clear Recent History\" (2820)";
        description = ''
          Firefox remembers your last choice. This will reset the value when you start Firefox
          0=everything, 1=last hour, 2=last two hours, 3=last four hours, 4=today
          which will display a blank value, and are not guaranteed to work
        '';
        "NOTE" = "Values 5 (last 5 minutes) and 6 (last 24 hours) are not listed in the dropdown,";
        links = {
        };
      };
    };
    meta = {
      title = "SHUTDOWN & SANITIZING";
      description = ''
      '';
      links = {
      };
      parrots = [
        "2800 syntax error: the parrot's bleedin' demised!"
      ];
    };
  };
  "4500" = {
    "4501" = {
      settings = [
        {
          name = "privacy.resistFingerprinting";
          enabled = true;
          value = true;
        }
      ];
      meta = {
        title = "enable privacy.resistFingerprinting [FF41+]";
        description = ''
          RFP also has a few side effects: mainly timezone is UTC0, and websites will prefer light theme
        '';
        "SETUP-WEB" = "RFP can cause some website breakage: mainly canvas, use a site exception via the urlbar";
        links = {
          "1" = "https://bugzilla.mozilla.org/418986";
        };
      };
    };
    "4502" = {
      settings = [
        {
          name = "privacy.window.maxInnerWidth";
          enabled = true;
          value = 1600;
        }
        {
          name = "privacy.window.maxInnerHeight";
          enabled = true;
          value = 900;
        }
      ];
      meta = {
        title = "set new window size rounding max values [FF55+]";
        description = ''
        '';
        "SETUP-CHROME" = "sizes round down in hundreds: width to 200s and height to 100s, to fit your screen";
        links = {
          "1" = "https://bugzilla.mozilla.org/1330882";
        };
      };
    };
    "4503" = {
      settings = [
        {
          name = "privacy.resistFingerprinting.block_mozAddonManager";
          enabled = true;
          value = true;
        }
      ];
      meta = {
        title = "disable mozAddonManager Web API [FF57+]";
        description = ''
        '';
        "NOTE" = "To allow extensions to work on AMO, you also need 2662";
        links = {
          "1" = "https://bugzilla.mozilla.org/buglist.cgi?bug_id=1384330,1406795,1415644,1453988";
        };
      };
    };
    "4504" = {
      settings = [
        {
          name = "privacy.resistFingerprinting.letterboxing";
          enabled = true;
          value = true;
        }
        {
          name = "privacy.resistFingerprinting.letterboxing.dimensions";
          enabled = false;
          value = "";
        }
      ];
      meta = {
        title = "enable RFP letterboxing [FF67+]";
        description = ''
          Dynamically resizes the inner window by applying margins in stepped ranges [2]
          If you use the dimension pref, then it will only apply those resolutions.
          The format is "width1xheight1, width2xheight2, ..." (e.g. "800x600, 1000x1000")
          dislike the margins, then flip this pref, keeping in mind that it is effectively fingerprintable
        '';
        "WARNING" = "DO NOT USE: the dimension pref is only meant for testing";
        "SETUP-WEB" = "This is independent of RFP (4501). If you're not using RFP, or you are but";
        links = {
          "1" = "https://bugzilla.mozilla.org/1407366";
          "2" = "https://hg.mozilla.org/mozilla-central/rev/6d2d7856e468#l2.32";
        };
      };
    };
    "4505" = {
      settings = [
        {
          name = "privacy.resistFingerprinting.exemptedDomains";
          enabled = false;
          value = "*.example.invalid";
        }
        {
          name = "privacy.resistFingerprinting.testGranularityMask";
          enabled = false;
          value = 0;
        }
      ];
      meta = {
        title = "experimental RFP [FF91+]";
        description = ''
        '';
        "WARNING] DO NOT USE unless testing, see [1" = "comment 12";
        links = {
          "1" = "https://bugzilla.mozilla.org/1635603";
        };
      };
    };
    "4506" = {
      settings = [
        {
          name = "layout.css.font-visibility.resistFingerprinting";
          enabled = false;
          value = 1;
        }
      ];
      meta = {
        title = "set RFP's font visibility level (1402) [FF94+]";
        description = ''
        '';
        links = {
        };
      };
    };
    "4507" = {
      settings = [
        {
          name = "browser.startup.blankWindow";
          enabled = true;
          value = false;
        }
      ];
      meta = {
        title = "disable showing about:blank as soon as possible during startup [FF60+]";
        description = ''
          When default true this no longer masks the RFP chrome resizing activity
        '';
        links = {
          "1" = "https://bugzilla.mozilla.org/1448423";
        };
      };
    };
    "4510" = {
      settings = [
        {
          name = "browser.display.use_system_colors";
          enabled = true;
          value = false;
        }
      ];
      meta = {
        title = "disable using system colors";
        description = ''
        '';
        "SETTING" = "General>Language and Appearance>Fonts and Colors>Colors>Use system colors";
        links = {
        };
      };
    };
    "4511" = {
      settings = [
        {
          name = "widget.non-native-theme.enabled";
          enabled = true;
          value = true;
        }
      ];
      meta = {
        title = "enforce non-native widget theme";
        description = ''
          Security: removes/reduces system API calls, e.g. win32k API [1]
          Fingerprinting: provides a uniform look and feel across platforms [2]
        '';
        links = {
          "2" = "https://bugzilla.mozilla.org/1411425";
          "1" = "https://bugzilla.mozilla.org/1381938";
        };
      };
    };
    "4512" = {
      settings = [
        {
          name = "browser.link.open_newwindow";
          enabled = true;
          value = 3;
        }
      ];
      meta = {
        title = "enforce links targeting new windows to open in a new tab instead";
        description = ''
          1=most recent window or tab, 2=new window, 3=new tab
          Stops malicious window sizes and some screen resolution leaks.
          You can still right-click a link and open in a new window
        '';
        "TEST" = "https://arkenfox.github.io/TZP/tzp.html#screen";
        "SETTING" = "General>Tabs>Open links in tabs instead of new windows";
        links = {
          "1" = "https://gitlab.torproject.org/tpo/applications/tor-browser/-/issues/9881";
        };
      };
    };
    "4513" = {
      settings = [
        {
          name = "browser.link.open_newwindow.restriction";
          enabled = true;
          value = 0;
        }
      ];
      meta = {
        title = "set all open window methods to abide by \"browser.link.open_newwindow\" (4512)";
        description = ''
        '';
        links = {
          "1" = "https://searchfox.org/mozilla-central/source/dom/tests/browser/browser_test_new_window_from_content.js";
        };
      };
    };
    "4520" = {
      settings = [
        {
          name = "webgl.disabled";
          enabled = true;
          value = true;
        }
      ];
      meta = {
        title = "disable WebGL (Web Graphics Library)";
        description = ''
        '';
        "SETUP-WEB" = "If you need it then override it. RFP still randomizes canvas for naive scripts";
        links = {
        };
      };
    };
    meta = {
      title = "RFP (RESIST FINGERPRINTING)";
      description = ''
        RFP covers a wide range of ongoing fingerprinting solutions.
        It is an all-or-nothing buy in: you cannot pick and choose what parts you want


        418986 - limit window.screen & CSS media queries (FF41)
        1281949 - spoof screen orientation (FF50)
        1281963 - hide the contents of navigator.plugins and navigator.mimeTypes (FF50-99)
        FF53: fixes GetSupportedNames in nsMimeTypeArray and nsPluginArray (1324044)
        1330890 - spoof timezone as UTC0 (FF55)
        1360039 - spoof navigator.hardwareConcurrency as 2 (FF55)
        FF56
        1369303 - spoof/disable performance API
        1333651 - spoof User Agent & Navigator API
        version: spoofed as ESR (FF102+ this is limited to Android)
        OS: JS spoofed as Windows 10, OS 10.15, Android 10, or Linux | HTTP Headers spoofed as Windows or Android
        1369319 - disable device sensor API
        1369357 - disable site specific zoom
        1337161 - hide gamepads from content
        1372072 - spoof network information API as "unknown" when dom.netinfo.enabled = true
        1333641 - reduce fingerprinting in WebSpeech API
        FF57
        1369309 - spoof media statistics
        1382499 - reduce screen co-ordinate fingerprinting in Touch API
        1217290 & 1409677 - enable some fingerprinting resistance for WebGL
        1382545 - reduce fingerprinting in Animation API
        1354633 - limit MediaError.message to a whitelist
        FF58-90
        967895 - spoof canvas and enable site permission prompt (FF58)
        1372073 - spoof/block fingerprinting in MediaDevices API (FF59)
        Spoof: enumerate devices as one "Internal Camera" and one "Internal Microphone"
        Block: suppresses the ondevicechange event
        1039069 - warn when language prefs are not set to "en*" (also see 0210, 0211) (FF59)
        1222285 & 1433592 - spoof keyboard events and suppress keyboard modifier events (FF59)
        Spoofing mimics the content language of the document. Currently it only supports en-US.
        Modifier events suppressed are SHIFT and both ALT keys. Chrome is not affected.
        1337157 - disable WebGL debug renderer info (FF60)
        1459089 - disable OS locale in HTTP Accept-Language headers (ANDROID) (FF62)
        1479239 - return "no-preference" with prefers-reduced-motion (FF63)
        1363508 - spoof/suppress Pointer Events (FF64)
        1492766 - spoof pointerEvent.pointerid (FF65)
        1485266 - disable exposure of system colors to CSS or canvas (FF67)
        1494034 - return "light" with prefers-color-scheme (FF67)
        1564422 - spoof audioContext outputLatency (FF70)
        1595823 - return audioContext sampleRate as 44100 (FF72)
        1607316 - spoof pointer as coarse and hover as none (ANDROID) (FF74)
        1621433 - randomize canvas (previously FF58+ returned an all-white canvas) (FF78)
        1653987 - limit font visibility to bundled and "Base Fonts" (Windows, Mac, some Linux) (FF80)
        1461454 - spoof smooth=true and powerEfficient=false for supported media in MediaCapabilities (FF82)
        FF91+
        531915 - use fdlibm's sin, cos and tan in jsmath (FF93, ESR91.1)
        1756280 - enforce navigator.pdfViewerEnabled as true and plugins/mimeTypes as hard-coded values (FF100)
        1692609 - reduce JS timing precision to 16.67ms (previously FF55+ was capped at 100ms) (FF102)
      '';
      "TEST" = "https://arkenfox.github.io/TZP/tzp.html#screen";
      "WARNING" = "DO NOT USE extensions to alter RFP protected metrics";
      links = {
      };
      parrots = [
        "4500 syntax error: the parrot's popped 'is clogs"
      ];
    };
  };
  "5000" = {
    "5001" = {
      settings = [
        {
          name = "browser.privatebrowsing.autostart";
          enabled = false;
          value = true;
        }
      ];
      meta = {
        title = "start Firefox in PB (Private Browsing) mode";
        description = ''
          caches, searches, cookies, localStorage, IndexedDB etc (which you can achieve in normal mode).
          In fact, PB mode limits or removes the ability to control some of these, and you need to quit
          Firefox to clear them. PB is best used as a one off window (Menu>New Private Window) to provide
          a temporary self-contained new session. Close all Private Windows to clear the PB mode session.
        '';
        "SETTING" = "Privacy & Security>History>Custom Settings>Always use private browsing mode";
        "NOTE" = "The P in PB mode can be misleading: it means no \"persistent\" disk state such as history,";
        links = {
          "1" = "https://wiki.mozilla.org/Private_Browsing";
          "2" = "https://support.mozilla.org/kb/common-myths-about-private-browsing";
        };
      };
    };
    "5002" = {
      settings = [
        {
          name = "browser.cache.memory.enable";
          enabled = false;
          value = false;
        }
        {
          name = "browser.cache.memory.capacity";
          enabled = false;
          value = 0;
        }
      ];
      meta = {
        title = "disable memory cache";
        description = ''
          capacity: -1=determine dynamically (default), 0=none, n=memory capacity in kibibytes
        '';
        links = {
        };
      };
    };
    "5003" = {
      settings = [
        {
          name = "signon.rememberSignons";
          enabled = false;
          value = false;
        }
      ];
      meta = {
        title = "disable saving passwords";
        description = ''
        '';
        "NOTE" = "This does not clear any passwords already saved";
        "SETTING" = "Privacy & Security>Logins and Passwords>Ask to save logins and passwords for websites";
        links = {
        };
      };
    };
    "5004" = {
      settings = [
        {
          name = "permissions.memory_only";
          enabled = false;
          value = true;
        }
      ];
      meta = {
        title = "disable permissions manager from writing to disk [FF41+] [RESTART]";
        description = ''
        '';
        "NOTE" = "This means any permission changes are session only";
        links = {
          "1" = "https://bugzilla.mozilla.org/967812";
        };
      };
    };
    "5005" = {
      settings = [
        {
          name = "security.nocertdb";
          enabled = false;
          value = true;
        }
      ];
      meta = {
        title = "disable intermediate certificate caching [FF41+] [RESTART]";
        description = ''
          Saved logins and passwords are not available. Reset the pref and restart to return them
        '';
        "NOTE" = "This affects login/cert/key dbs. The effect is all credentials are session-only.";
        links = {
        };
      };
    };
    "5006" = {
      settings = [
        {
          name = "browser.chrome.site_icons";
          enabled = false;
          value = false;
        }
      ];
      meta = {
        title = "disable favicons in history and bookmarks";
        description = ''
          actual history (and bookmarks) already do. Your history is more detailed, so
          control that instead; e.g. disable history, clear history on exit, use PB mode
        '';
        "NOTE" = "favicons.sqlite is sanitized on Firefox close";
        links = {
        };
      };
    };
    "5007" = {
      settings = [
        {
          name = "browser.sessionstore.max_tabs_undo";
          enabled = false;
          value = 0;
        }
      ];
      meta = {
        title = "exclude \"Undo Closed Tabs\" in Session Restore";
        description = ''
        '';
        links = {
        };
      };
    };
    "5008" = {
      settings = [
        {
          name = "browser.sessionstore.resume_from_crash";
          enabled = false;
          value = false;
        }
      ];
      meta = {
        title = "disable resuming session from crash";
        description = ''
        '';
        "TEST" = "about:crashparent";
        links = {
        };
      };
    };
    "5009" = {
      settings = [
        {
          name = "browser.download.forbid_open_with";
          enabled = false;
          value = true;
        }
      ];
      meta = {
        title = "disable \"open with\" in download dialog [FF50+]";
        description = ''
          Application data isolation [1]
        '';
        links = {
          "1" = "https://bugzilla.mozilla.org/1281959";
        };
      };
    };
    "5010" = {
      settings = [
        {
          name = "browser.urlbar.suggest.history";
          enabled = false;
          value = false;
        }
        {
          name = "browser.urlbar.suggest.bookmark";
          enabled = false;
          value = false;
        }
        {
          name = "browser.urlbar.suggest.openpage";
          enabled = false;
          value = false;
        }
        {
          name = "browser.urlbar.suggest.topsites";
          enabled = false;
          value = false;
        }
      ];
      meta = {
        title = "disable location bar suggestion types";
        description = ''
        '';
        "SETTING" = "Privacy & Security>Address Bar>When using the address bar, suggest";
        links = {
        };
      };
    };
    "5011" = {
      settings = [
        {
          name = "browser.urlbar.maxRichResults";
          enabled = false;
          value = 0;
        }
      ];
      meta = {
        title = "disable location bar dropdown";
        description = ''
          This value controls the total number of entries to appear in the location bar dropdown
        '';
        links = {
        };
      };
    };
    "5012" = {
      settings = [
        {
          name = "browser.urlbar.autoFill";
          enabled = false;
          value = false;
        }
      ];
      meta = {
        title = "disable location bar autofill";
        description = ''
        '';
        links = {
          "1" = "https://support.mozilla.org/kb/address-bar-autocomplete-firefox#w_url-autocomplete";
        };
      };
    };
    "5013" = {
      settings = [
        {
          name = "places.history.enabled";
          enabled = false;
          value = false;
        }
      ];
      meta = {
        title = "disable browsing and download history";
        description = ''
        '';
        "NOTE" = "We also clear history and downloads on exit (2811)";
        "SETTING" = "Privacy & Security>History>Custom Settings>Remember browsing and download history";
        links = {
        };
      };
    };
    "5014" = {
      settings = [
        {
          name = "browser.taskbar.lists.enabled";
          enabled = false;
          value = false;
        }
        {
          name = "browser.taskbar.lists.frequent.enabled";
          enabled = false;
          value = false;
        }
        {
          name = "browser.taskbar.lists.recent.enabled";
          enabled = false;
          value = false;
        }
        {
          name = "browser.taskbar.lists.tasks.enabled";
          enabled = false;
          value = false;
        }
      ];
      meta = {
        title = "disable Windows jumplist [WINDOWS]";
        description = ''
        '';
        links = {
        };
      };
    };
    "5015" = {
      settings = [
        {
          name = "browser.taskbar.previews.enable";
          enabled = false;
          value = false;
        }
      ];
      meta = {
        title = "disable Windows taskbar preview [WINDOWS]";
        description = ''
        '';
        links = {
        };
      };
    };
    "5016" = {
      settings = [
        {
          name = "browser.download.folderList";
          enabled = false;
          value = 2;
        }
      ];
      meta = {
        title = "discourage downloading to desktop";
        description = ''
          0=desktop, 1=downloads (default), 2=last used
        '';
        "SETTING" = "To set your default \"downloads\": General>Downloads>Save files to";
        links = {
        };
      };
    };
    meta = {
      title = "OPTIONAL OPSEC";
      description = ''
        Disk avoidance, application data isolation, eyeballs...
      '';
      links = {
      };
      parrots = [
        "5000 syntax error: the parrot's taken 'is last bow"
      ];
    };
  };
  "5500" = {
    "5501" = {
      settings = [
        {
          name = "mathml.disabled";
          enabled = false;
          value = true;
        }
      ];
      meta = {
        title = "disable MathML (Mathematical Markup Language) [FF51+]";
        description = ''
        '';
        links = {
          "1" = "https://cve.mitre.org/cgi-bin/cvekey.cgi?keyword=mathml";
        };
      };
    };
    "5502" = {
      settings = [
        {
          name = "svg.disabled";
          enabled = false;
          value = true;
        }
      ];
      meta = {
        title = "disable in-content SVG (Scalable Vector Graphics) [FF53+]";
        description = ''
        '';
        links = {
          "1" = "https://cve.mitre.org/cgi-bin/cvekey.cgi?keyword=firefox+svg";
        };
      };
    };
    "5503" = {
      settings = [
        {
          name = "gfx.font_rendering.graphite.enabled";
          enabled = false;
          value = false;
        }
      ];
      meta = {
        title = "disable graphite";
        description = ''
        '';
        links = {
          "1" = "https://cve.mitre.org/cgi-bin/cvekey.cgi?keyword=firefox+graphite";
          "2" = "https://en.wikipedia.org/wiki/Graphite_(SIL)";
        };
      };
    };
    "5504" = {
      settings = [
        {
          name = "javascript.options.asmjs";
          enabled = false;
          value = false;
        }
      ];
      meta = {
        title = "disable asm.js [FF22+]";
        description = ''
        '';
        links = {
          "3" = "https://rh0dev.github.io/blog/2017/the-return-of-the-jit/";
          "1" = "http://asmjs.org/";
          "2" = "https://cve.mitre.org/cgi-bin/cvekey.cgi?keyword=asm.js";
        };
      };
    };
    "5505" = {
      settings = [
        {
          name = "javascript.options.ion";
          enabled = false;
          value = false;
        }
        {
          name = "javascript.options.baselinejit";
          enabled = false;
          value = false;
        }
        {
          name = "javascript.options.jit_trustedprincipals";
          enabled = false;
          value = true;
        }
      ];
      meta = {
        title = "disable Ion and baseline JIT to harden against JS exploits";
        description = ''
          is enabled, then Ion can still be used by extensions (1599226)
        '';
        "NOTE" = "When both Ion and JIT are disabled, and trustedprincipals";
        links = {
          "1" = "https://cve.mitre.org/cgi-bin/cvekey.cgi?keyword=firefox+jit";
          "2" = "https://microsoftedge.github.io/edgevr/posts/Super-Duper-Secure-Mode/";
        };
      };
    };
    "5506" = {
      settings = [
        {
          name = "javascript.options.wasm";
          enabled = false;
          value = false;
        }
      ];
      meta = {
        title = "disable WebAssembly [FF52+]";
        description = ''
          Vulnerabilities [1] have increasingly been found, including those known and fixed
          in native programs years ago [2]. WASM has powerful low-level access, making
          certain attacks (brute-force) and vulnerabilities more possible
        '';
        "STATS" = "~0.2% of websites, about half of which are for crytopmining / malvertising [2][3]";
        links = {
          "2" = "https://spectrum.ieee.org/tech-talk/telecom/security/more-worries-over-the-security-of-web-assembly";
          "1" = "https://cve.mitre.org/cgi-bin/cvekey.cgi?keyword=wasm";
          "3" = "https://www.zdnet.com/article/half-of-the-websites-using-webassembly-use-it-for-malicious-purposes";
        };
      };
    };
    meta = {
      title = "OPTIONAL HARDENING";
      description = ''
        Not recommended. Overriding these can cause breakage and performance issues,
        they are mostly fingerprintable, and the threat model is practically nonexistent
      '';
      links = {
      };
      parrots = [
        "5500 syntax error: this is an ex-parrot!"
      ];
    };
  };
  "6000" = {
    "6001" = {
      settings = [
        {
          name = "extensions.blocklist.enabled";
          enabled = true;
          value = true;
        }
      ];
      meta = {
        title = "enforce Firefox blocklist";
        description = ''
        '';
        "WHY" = "It includes updates for \"revoked certificates\"";
        links = {
          "1" = "https://blog.mozilla.org/security/2015/03/03/revoking-intermediate-certificates-introducing-onecrl/";
        };
      };
    };
    "6002" = {
      settings = [
        {
          name = "network.http.referer.spoofSource";
          enabled = true;
          value = false;
        }
      ];
      meta = {
        title = "enforce no referer spoofing";
        description = ''
        '';
        "WHY" = "Spoofing can affect CSRF (Cross-Site Request Forgery) protections";
        links = {
        };
      };
    };
    "6004" = {
      settings = [
        {
          name = "security.dialog_enable_delay";
          enabled = true;
          value = 1000;
        }
      ];
      meta = {
        title = "enforce a security delay on some confirmation dialogs such as install, open/save";
        description = ''
        '';
        links = {
          "1" = "https://www.squarefree.com/2004/07/01/race-conditions-in-security-dialogs/";
        };
      };
    };
    "6008" = {
      settings = [
        {
          name = "privacy.firstparty.isolate";
          enabled = true;
          value = false;
        }
      ];
      meta = {
        title = "enforce no First Party Isolation [FF51+]";
        description = ''
          and enabling FPI disables those. FPI is no longer maintained
        '';
        "WARNING" = "Replaced with network partitioning (FF85+) and TCP (2701),";
        links = {
        };
      };
    };
    "6009" = {
      settings = [
        {
          name = "extensions.webcompat.enable_shims";
          enabled = true;
          value = true;
        }
      ];
      meta = {
        title = "enforce SmartBlock shims [FF81+]";
        description = ''
          In FF96+ these are listed in about:compat
        '';
        links = {
          "1" = "https://blog.mozilla.org/security/2021/03/23/introducing-smartblock/";
        };
      };
    };
    "6010" = {
      settings = [
        {
          name = "security.tls.version.enable-deprecated";
          enabled = true;
          value = false;
        }
      ];
      meta = {
        title = "enforce/reset TLS 1.0/1.1 downgrades to session only";
        description = ''
        '';
        "TEST" = "https://tls-v1-1.badssl.com:1010/";
        "NOTE" = "In FF97+ the TLS 1.0/1.1 downgrade UX was removed";
        links = {
        };
      };
    };
    "6011" = {
      settings = [
        {
          name = "extensions.webcompat-reporter.enabled";
          enabled = true;
          value = false;
        }
      ];
      meta = {
        title = "enforce disabling of Web Compatibility Reporter [FF56+]";
        description = ''
          Web Compatibility Reporter adds a "Report Site Issue" button to send data to Mozilla
        '';
        "WHY" = "To prevent wasting Mozilla's time with a custom setup";
        links = {
        };
      };
    };
    "6050" = {
      settings = [
        {
          name = "browser.urlbar.trimURLs";
          enabled = false;
          value = "";
        }
        {
          name = "dom.caches.enabled";
          enabled = false;
          value = "";
        }
        {
          name = "dom.storageManager.enabled";
          enabled = false;
          value = "";
        }
        {
          name = "dom.storage_access.enabled";
          enabled = false;
          value = "";
        }
        {
          name = "dom.targetBlankNoOpener.enabled";
          enabled = false;
          value = "";
        }
        {
          name = "network.cookie.thirdparty.sessionOnly";
          enabled = false;
          value = "";
        }
        {
          name = "network.cookie.thirdparty.nonsecureSessionOnly";
          enabled = false;
          value = "";
        }
        {
          name = "privacy.firstparty.isolate.block_post_message";
          enabled = false;
          value = "";
        }
        {
          name = "privacy.firstparty.isolate.restrict_opener_access";
          enabled = false;
          value = "";
        }
        {
          name = "privacy.firstparty.isolate.use_site";
          enabled = false;
          value = "";
        }
        {
          name = "privacy.window.name.update.enabled";
          enabled = false;
          value = "";
        }
        {
          name = "security.insecure_connection_text.enabled";
          enabled = false;
          value = "";
        }
      ];
      meta = {
        title = "prefsCleaner: reset items removed from arkenfox FF92+";
        description = ''
        '';
        links = {
        };
      };
    };
    meta = {
      title = "DON'T TOUCH";
      description = ''
      '';
      links = {
      };
      parrots = [
        "6000 syntax error: the parrot's 'istory!"
      ];
    };
  };
  "7000" = {
    "7001" = {
      settings = [
        {
          name = "geo.enabled";
          enabled = false;
          value = false;
        }
        {
          name = "full-screen-api.enabled";
          enabled = false;
          value = false;
        }
        {
          name = "browser.cache.offline.enable";
          enabled = false;
          value = false;
        }
        {
          name = "dom.vr.enabled";
          enabled = false;
          value = false;
        }
      ];
      meta = {
        title = "disable APIs";
        description = ''
          Location-Aware Browsing, Full Screen, offline cache (appCache), Virtual Reality
          appCache storage capability was removed in FF90. Full screen requires user interaction
        '';
        "WHY" = "The API state is easily fingerprintable. Geo and VR are behind prompts (7002).";
        links = {
        };
      };
    };
    "7002" = {
      settings = [
        {
          name = "permissions.default.geo";
          enabled = false;
          value = 0;
        }
        {
          name = "permissions.default.camera";
          enabled = false;
          value = 0;
        }
        {
          name = "permissions.default.microphone";
          enabled = false;
          value = 0;
        }
        {
          name = "permissions.default.desktop-notification";
          enabled = false;
          value = 0;
        }
        {
          name = "permissions.default.xr";
          enabled = false;
          value = 0;
        }
      ];
      meta = {
        title = "set default permissions";
        description = ''
          Location, Camera, Microphone, Notifications [FF58+] Virtual Reality [FF73+]
          0=always ask (default), 1=allow, 2=block
          exceptions as allow/block for frequently visited/annoying sites: i.e. not global
        '';
        "SETTING" = "to manage site exceptions: Options>Privacy & Security>Permissions>Settings";
        "WHY" = "These are fingerprintable via Permissions API, except VR. Just add site";
        links = {
        };
      };
    };
    "7003" = {
      settings = [
        {
          name = "security.ssl3.ecdhe_ecdsa_aes_256_sha";
          enabled = false;
          value = false;
        }
        {
          name = "security.ssl3.ecdhe_ecdsa_aes_128_sha";
          enabled = false;
          value = false;
        }
        {
          name = "security.ssl3.ecdhe_rsa_aes_128_sha";
          enabled = false;
          value = false;
        }
        {
          name = "security.ssl3.ecdhe_rsa_aes_256_sha";
          enabled = false;
          value = false;
        }
        {
          name = "security.ssl3.rsa_aes_128_gcm_sha256";
          enabled = false;
          value = false;
        }
        {
          name = "security.ssl3.rsa_aes_256_gcm_sha384";
          enabled = false;
          value = false;
        }
        {
          name = "security.ssl3.rsa_aes_128_sha";
          enabled = false;
          value = false;
        }
        {
          name = "security.ssl3.rsa_aes_256_sha";
          enabled = false;
          value = false;
        }
      ];
      meta = {
        title = "disable non-modern cipher suites [1]";
        description = ''
        '';
        "WHY" = "Passive fingerprinting. Minimal/non-existent threat of downgrade attacks";
        links = {
          "1" = "https://browserleaks.com/ssl";
        };
      };
    };
    "7004" = {
      settings = [
        {
          name = "security.tls.version.min";
          enabled = false;
          value = 3;
        }
        {
          name = "security.tls.version.max";
          enabled = false;
          value = 4;
        }
      ];
      meta = {
        title = "control TLS versions";
        description = ''
        '';
        "WHY" = "Passive fingerprinting and security";
        links = {
        };
      };
    };
    "7005" = {
      settings = [
        {
          name = "security.ssl.disable_session_identifiers";
          enabled = false;
          value = true;
        }
      ];
      meta = {
        title = "disable SSL session IDs [FF36+]";
        description = ''
          and isolated with network partitioning (FF85+) and/or containers
        '';
        "WHY" = "Passive fingerprinting and perf costs. These are session-only";
        links = {
        };
      };
    };
    "7006" = {
      settings = [
        {
          name = "dom.securecontext.allowlist_onions";
          enabled = false;
          value = true;
        }
        {
          name = "network.http.referer.hideOnionSource";
          enabled = false;
          value = true;
        }
      ];
      meta = {
        title = "onions";
        description = ''
        '';
        "WHY" = "Firefox doesn't support hidden services. Use Tor Browser";
        links = {
        };
      };
    };
    "7007" = {
      settings = [
        {
          name = "network.http.sendRefererHeader";
          enabled = false;
          value = 2;
        }
        {
          name = "network.http.referer.trimmingPolicy";
          enabled = false;
          value = 0;
        }
      ];
      meta = {
        title = "referers";
        description = ''
        '';
        "WHY" = "Only cross-origin referers (1600s) need control";
        links = {
        };
      };
    };
    "7008" = {
      settings = [
        {
          name = "network.http.referer.defaultPolicy";
          enabled = false;
          value = 2;
        }
        {
          name = "network.http.referer.defaultPolicy.pbmode";
          enabled = false;
          value = 2;
        }
      ];
      meta = {
        title = "set the default Referrer Policy [FF59+]";
        description = ''
          0=no-referer, 1=same-origin, 2=strict-origin-when-cross-origin, 3=no-referrer-when-downgrade
        '';
        "WHY" = "Defaults are fine. They can be overridden by a site-controlled Referrer Policy";
        links = {
        };
      };
    };
    "7010" = {
      settings = [
        {
          name = "network.http.altsvc.enabled";
          enabled = false;
          value = false;
        }
        {
          name = "network.http.altsvc.oe";
          enabled = false;
          value = false;
        }
      ];
      meta = {
        title = "disable HTTP Alternative Services [FF37+]";
        description = ''
        '';
        "WHY" = "Already isolated with network partitioning (FF85+)";
        links = {
        };
      };
    };
    "7011" = {
      settings = [
        {
          name = "dom.event.contextmenu.enabled";
          enabled = false;
          value = false;
        }
      ];
      meta = {
        title = "disable website control over browser right-click context menu";
        description = ''
        '';
        "WHY" = "Just use Shift-Right-Click";
        links = {
        };
      };
    };
    "7012" = {
      settings = [
        {
          name = "gfx.downloadable_fonts.enabled";
          enabled = false;
          value = false;
        }
        {
          name = "gfx.downloadable_fonts.fallback_delay";
          enabled = false;
          value = -1;
        }
      ];
      meta = {
        title = "disable icon fonts (glyphs) and local fallback rendering";
        description = ''
        '';
        "WHY" = "Breakage, font fallback is equivalency, also RFP";
        links = {
          "2" = "https://gitlab.torproject.org/legacy/trac/-/issues/8455";
          "1" = "https://bugzilla.mozilla.org/789788";
        };
      };
    };
    "7013" = {
      settings = [
        {
          name = "dom.event.clipboardevents.enabled";
          enabled = false;
          value = false;
        }
      ];
      meta = {
        title = "disable Clipboard API";
        description = ''
          interaction, and paste is limited to focused editable fields
        '';
        "WHY" = "Fingerprintable. Breakage. Cut/copy/paste require user";
        links = {
        };
      };
    };
    "7014" = {
      settings = [
        {
          name = "extensions.systemAddon.update.enabled";
          enabled = false;
          value = false;
        }
        {
          name = "extensions.systemAddon.update.url";
          enabled = false;
          value = "";
        }
      ];
      meta = {
        title = "disable System Add-on updates";
        description = ''
        '';
        "WHY" = "It can compromise security. System addons ship with prefs, use those";
        links = {
        };
      };
    };
    "7015" = {
      settings = [
        {
          name = "privacy.donottrackheader.enabled";
          enabled = false;
          value = true;
        }
      ];
      meta = {
        title = "enable the DNT (Do Not Track) HTTP header";
        description = ''
        '';
        "WHY" = "DNT is enforced with Tracking Protection which is used in ETP Strict (2701)";
        links = {
        };
      };
    };
    "7016" = {
      settings = [
        {
          name = "network.cookie.cookieBehavior";
          enabled = false;
          value = 5;
        }
        {
          name = "network.http.referer.disallowCrossSiteRelaxingDefault";
          enabled = false;
          value = true;
        }
        {
          name = "network.http.referer.disallowCrossSiteRelaxingDefault.top_navigation";
          enabled = false;
          value = true;
        }
        {
          name = "privacy.partition.network_state.ocsp_cache";
          enabled = false;
          value = true;
        }
        {
          name = "privacy.query_stripping.enabled";
          enabled = false;
          value = true;
        }
        {
          name = "privacy.trackingprotection.enabled";
          enabled = false;
          value = true;
        }
        {
          name = "privacy.trackingprotection.socialtracking.enabled";
          enabled = false;
          value = true;
        }
        {
          name = "privacy.trackingprotection.cryptomining.enabled";
          enabled = false;
          value = true;
        }
        {
          name = "privacy.trackingprotection.fingerprinting.enabled";
          enabled = false;
          value = true;
        }
      ];
      meta = {
        title = "customize ETP settings";
        description = ''
        '';
        "WHY" = "Arkenfox only supports strict (2701) which sets these at runtime";
        links = {
        };
      };
    };
    "7017" = {
      settings = [
        {
          name = "dom.serviceWorkers.enabled";
          enabled = false;
          value = false;
        }
      ];
      meta = {
        title = "disable service workers";
        description = ''
          or blocked with TCP in 3rd parties (FF95 or lower)
        '';
        "WHY" = "Already isolated (FF96+) with TCP (2701) behind a pref (2710)";
        links = {
        };
      };
    };
    "7018" = {
      settings = [
        {
          name = "dom.webnotifications.enabled";
          enabled = false;
          value = false;
        }
        {
          name = "dom.webnotifications.serviceworker.enabled";
          enabled = false;
          value = false;
        }
      ];
      meta = {
        title = "disable Web Notifications";
        description = ''
        '';
        "WHY" = "Web Notifications are behind a prompt (7002)";
        links = {
          "1" = "https://blog.mozilla.org/en/products/firefox/block-notification-requests/";
        };
      };
    };
    "7019" = {
      settings = [
        {
          name = "dom.push.enabled";
          enabled = false;
          value = false;
        }
      ];
      meta = {
        title = "disable Push Notifications [FF44+]";
        description = ''
        '';
        "NOTE" = "To remove all subscriptions, reset \"dom.push.userAgentID\"";
        "WHY" = "Push requires subscription";
        links = {
          "1" = "https://support.mozilla.org/kb/push-notifications-firefox";
        };
      };
    };
    meta = {
      title = "DON'T BOTHER";
      description = ''
      '';
      links = {
      };
      parrots = [
        "7000 syntax error: the parrot's pushing up daisies!"
      ];
    };
  };
  "8000" = {
    "8001" = {
      settings = [
        {
          name = "device.sensors.enabled";
          enabled = false;
          value = false;
        }
        {
          name = "dom.enable_performance";
          enabled = false;
          value = false;
        }
        {
          name = "dom.enable_resource_timing";
          enabled = false;
          value = false;
        }
        {
          name = "dom.gamepad.enabled";
          enabled = false;
          value = false;
        }
        {
          name = "dom.netinfo.enabled";
          enabled = false;
          value = false;
        }
        {
          name = "dom.webaudio.enabled";
          enabled = false;
          value = false;
        }
      ];
      meta = {
        title = "disable APIs";
        description = ''
        '';
        links = {
        };
      };
    };
    "8002" = {
      settings = [
        {
          name = "browser.display.use_document_fonts";
          enabled = false;
          value = 0;
        }
        {
          name = "browser.zoom.siteSpecific";
          enabled = false;
          value = false;
        }
        {
          name = "dom.w3c_touch_events.enabled";
          enabled = false;
          value = 0;
        }
        {
          name = "media.navigator.enabled";
          enabled = false;
          value = false;
        }
        {
          name = "media.ondevicechange.enabled";
          enabled = false;
          value = false;
        }
        {
          name = "media.video_stats.enabled";
          enabled = false;
          value = false;
        }
        {
          name = "media.webspeech.synth.enabled";
          enabled = false;
          value = false;
        }
        {
          name = "webgl.enable-debug-renderer-info";
          enabled = false;
          value = false;
        }
      ];
      meta = {
        title = "disable other";
        description = ''
        '';
        links = {
        };
      };
    };
    "8003" = {
      settings = [
        {
          name = "dom.maxHardwareConcurrency";
          enabled = false;
          value = 2;
        }
        {
          name = "font.system.whitelist";
          enabled = false;
          value = "";
        }
        {
          name = "general.appname.override";
          enabled = false;
          value = "";
        }
        {
          name = "general.appversion.override";
          enabled = false;
          value = "";
        }
        {
          name = "general.buildID.override";
          enabled = false;
          value = "";
        }
        {
          name = "general.oscpu.override";
          enabled = false;
          value = "";
        }
        {
          name = "general.platform.override";
          enabled = false;
          value = "";
        }
        {
          name = "general.useragent.override";
          enabled = false;
          value = "";
        }
        {
          name = "ui.use_standins_for_native_colors";
          enabled = false;
          value = true;
        }
      ];
      meta = {
        title = "spoof";
        description = ''
        '';
        links = {
        };
      };
    };
    meta = {
      title = "DON'T BOTHER: FINGERPRINTING";
      description = ''
      '';
      "WHY" = "They are insufficient to help anti-fingerprinting and do more harm than good";
      "WARNING" = "DO NOT USE with RFP. RFP already covers these and they can interfere";
      links = {
      };
      parrots = [
        "8000 syntax error: the parrot's crossed the Jordan"
      ];
    };
  };
  "9000" = {
    "9000" = {
      settings = [
        {
          name = "browser.startup.homepage_override.mstone";
          enabled = true;
          value = "ignore";
        }
        {
          name = "startup.homepage_welcome_url";
          enabled = false;
          value = "";
        }
        {
          name = "startup.homepage_welcome_url.additional";
          enabled = false;
          value = "";
        }
        {
          name = "startup.homepage_override_url";
          enabled = false;
          value = "";
        }
        {
          name = "browser.tabs.warnOnClose";
          enabled = false;
          value = false;
        }
        {
          name = "browser.tabs.warnOnCloseOtherTabs";
          enabled = false;
          value = false;
        }
        {
          name = "browser.tabs.warnOnOpen";
          enabled = false;
          value = false;
        }
        {
          name = "browser.warnOnQuitShortcut";
          enabled = false;
          value = false;
        }
        {
          name = "full-screen-api.warning.delay";
          enabled = false;
          value = 0;
        }
        {
          name = "full-screen-api.warning.timeout";
          enabled = false;
          value = 0;
        }
        {
          name = "app.update.auto";
          enabled = false;
          value = false;
        }
        {
          name = "browser.search.update";
          enabled = false;
          value = false;
        }
        {
          name = "extensions.update.enabled";
          enabled = false;
          value = false;
        }
        {
          name = "extensions.update.autoUpdateDefault";
          enabled = false;
          value = false;
        }
        {
          name = "extensions.getAddons.cache.enabled";
          enabled = false;
          value = false;
        }
        {
          name = "browser.download.autohideButton";
          enabled = false;
          value = false;
        }
        {
          name = "toolkit.legacyUserProfileCustomizations.stylesheets";
          enabled = false;
          value = true;
        }
        {
          name = "ui.prefersReducedMotion";
          enabled = false;
          value = 1;
        }
        {
          name = "ui.systemUsesDarkTheme";
          enabled = false;
          value = 1;
        }
        {
          name = "accessibility.typeaheadfind";
          enabled = false;
          value = true;
        }
        {
          name = "clipboard.autocopy";
          enabled = false;
          value = false;
        }
        {
          name = "layout.spellcheckDefault";
          enabled = false;
          value = 2;
        }
        {
          name = "media.autoplay.default";
          enabled = false;
          value = 5;
        }
        {
          name = "media.autoplay.blocking_policy";
          enabled = false;
          value = 2;
        }
        {
          name = "browser.backspace_action";
          enabled = false;
          value = 2;
        }
        {
          name = "browser.quitShortcut.disabled";
          enabled = false;
          value = true;
        }
        {
          name = "browser.tabs.closeWindowWithLastTab";
          enabled = false;
          value = false;
        }
        {
          name = "browser.tabs.loadBookmarksInTabs";
          enabled = false;
          value = true;
        }
        {
          name = "browser.urlbar.decodeURLsOnCopy";
          enabled = false;
          value = true;
        }
        {
          name = "general.autoScroll";
          enabled = false;
          value = false;
        }
        {
          name = "ui.key.menuAccessKey";
          enabled = false;
          value = 0;
        }
        {
          name = "view_source.tab";
          enabled = false;
          value = false;
        }
        {
          name = "browser.messaging-system.whatsNewPanel.enabled";
          enabled = true;
          value = false;
        }
        {
          name = "extensions.pocket.enabled";
          enabled = false;
          value = false;
        }
        {
          name = "extensions.screenshots.disabled";
          enabled = false;
          value = true;
        }
        {
          name = "identity.fxaccounts.enabled";
          enabled = false;
          value = false;
        }
        {
          name = "reader.parse-on-load.enabled";
          enabled = false;
          value = false;
        }
        {
          name = "browser.bookmarks.max_backups";
          enabled = false;
          value = 2;
        }
        {
          name = "browser.newtabpage.activity-stream.asrouter.userprefs.cfr.addons";
          enabled = true;
          value = false;
        }
        {
          name = "browser.newtabpage.activity-stream.asrouter.userprefs.cfr.features";
          enabled = true;
          value = false;
        }
        {
          name = "network.manage-offline-status";
          enabled = false;
          value = false;
        }
        {
          name = "xpinstall.signatures.required";
          enabled = false;
          value = false;
        }
      ];
      meta = {
        title = "PERSONAL";
        description = ''
        '';
        links = {
        };
      };
    };
    meta = {
      title = "PERSONAL";
      description = ''
        Non-project related but useful. If any interest you, add them to your overrides
      '';
      links = {
      };
      parrots = [
        "9000 syntax error: the parrot's cashed in 'is chips!"
      ];
    };
  };
}
