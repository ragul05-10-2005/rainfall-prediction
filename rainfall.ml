<!DOCTYPE html>
<!-- saved from url=(0158)https://colab.research.google.com/drive/1vbypCXK5x0GmLKj9bG5zQWB7WIP2Erti#revisionId=0B276qCGZjaPlakJmTmp6RytrN3dIbTYwM3RhTlFra0dsZDdZPQ&scrollTo=o1saBp21z1AD -->
<html lang="en" theme="adaptive" editor="Default Light"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><meta http-equiv="origin-trial" content="Az520Inasey3TAyqLyojQa8MnmCALSEU29yQFW8dePZ7xQTvSt73pHazLFTK5f7SyLUJSo2uKLesEtEa9aUYcgMAAACPeyJvcmlnaW4iOiJodHRwczovL2dvb2dsZS5jb206NDQzIiwiZmVhdHVyZSI6IkRpc2FibGVUaGlyZFBhcnR5U3RvcmFnZVBhcnRpdGlvbmluZyIsImV4cGlyeSI6MTcyNTQwNzk5OSwiaXNTdWJkb21haW4iOnRydWUsImlzVGhpcmRQYXJ0eSI6dHJ1ZX0="><meta http-equiv="origin-trial" content="Az520Inasey3TAyqLyojQa8MnmCALSEU29yQFW8dePZ7xQTvSt73pHazLFTK5f7SyLUJSo2uKLesEtEa9aUYcgMAAACPeyJvcmlnaW4iOiJodHRwczovL2dvb2dsZS5jb206NDQzIiwiZmVhdHVyZSI6IkRpc2FibGVUaGlyZFBhcnR5U3RvcmFnZVBhcnRpdGlvbmluZyIsImV4cGlyeSI6MTcyNTQwNzk5OSwiaXNTdWJkb21haW4iOnRydWUsImlzVGhpcmRQYXJ0eSI6dHJ1ZX0="><script type="text/javascript" async="" charset="utf-8" src="./rainfall_files/recaptcha__en.js.download" crossorigin="anonymous" integrity="sha384-1qCnjZ4tqdtwUnG8/biz1OfJ7vkM3jnPZ0W0wIcDu+NDwZyQHqHpscJVB8ezdlTM" nonce=""></script><script type="text/javascript" async="" charset="utf-8" src="./rainfall_files/recaptcha__en.js.download" crossorigin="anonymous" integrity="sha384-1qCnjZ4tqdtwUnG8/biz1OfJ7vkM3jnPZ0W0wIcDu+NDwZyQHqHpscJVB8ezdlTM" nonce=""></script><script type="text/javascript" async="" src="./rainfall_files/js" nonce=""></script><script src="./rainfall_files/cb=gapi.loaded_1" nonce="" async=""></script><script src="./rainfall_files/cb=gapi.loaded_0" nonce="" async=""></script><script async="" src="./rainfall_files/analytics.js.download"></script><script nonce="">
      document.addEventListener('keydown', (e) => {
        // Stop propagation on ESC because otherwise it will halt outbound XHRs
        // See b/131755324 for more info.
        if (e.key === 'Escape') {
          e.stopPropagation();
          e.preventDefault();
        }
      });
    </script><meta name="referrer" content="origin"><meta name="viewport" content="width=device-width, initial-scale=1"><title>Untitled0.ipynb - Colab</title><link href="./rainfall_files/css2" rel="stylesheet"><link href="./rainfall_files/css" rel="stylesheet"><link rel="search" type="application/opensearchdescription+xml" href="https://colab.research.google.com/opensearch.xml" title="Google Colab"><style>.gb_8a:not(.gb_ad){font:13px/27px Roboto,Arial,sans-serif;z-index:986}@-webkit-keyframes gb__a{0%{opacity:0}50%{opacity:1}}@keyframes gb__a{0%{opacity:0}50%{opacity:1}}a.gb_qa{border:none;color:#4285f4;cursor:default;font-weight:bold;outline:none;position:relative;text-align:center;text-decoration:none;text-transform:uppercase;white-space:nowrap;-webkit-user-select:none}a.gb_qa:hover:after,a.gb_qa:focus:after{background-color:rgba(0,0,0,.12);content:"";height:100%;left:0;position:absolute;top:0;width:100%}a.gb_qa:hover,a.gb_qa:focus{text-decoration:none}a.gb_qa:active{background-color:rgba(153,153,153,.4);text-decoration:none}a.gb_ra{background-color:#4285f4;color:#fff}a.gb_ra:active{background-color:#0043b2}.gb_sa{box-shadow:0 1px 1px rgba(0,0,0,.16)}.gb_qa,.gb_ra,.gb_ta,.gb_ua{display:inline-block;line-height:28px;padding:0 12px;border-radius:2px}.gb_ta{background:#f8f8f8;border:1px solid #c6c6c6}.gb_ua{background:#f8f8f8}.gb_ta,#gb a.gb_ta.gb_ta,.gb_ua{color:#666;cursor:default;text-decoration:none}#gb a.gb_ua{cursor:default;text-decoration:none}.gb_ua{border:1px solid #4285f4;font-weight:bold;outline:none;background:#4285f4;background:-webkit-gradient(linear,left top,left bottom,from(top),color-stop(#4387fd),to(#4683ea));background:-webkit-linear-gradient(top,#4387fd,#4683ea);background:linear-gradient(top,#4387fd,#4683ea);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#4387fd,endColorstr=#4683ea,GradientType=0)}#gb a.gb_ua{color:#fff}.gb_ua:hover{box-shadow:0 1px 0 rgba(0,0,0,.15)}.gb_ua:active{box-shadow:inset 0 2px 0 rgba(0,0,0,.15);background:#3c78dc;background:-webkit-gradient(linear,left top,left bottom,from(top),color-stop(#3c7ae4),to(#3f76d3));background:-webkit-linear-gradient(top,#3c7ae4,#3f76d3);background:linear-gradient(top,#3c7ae4,#3f76d3);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#3c7ae4,endColorstr=#3f76d3,GradientType=0)}#gb .gb_va{background:#fff;border:1px solid #dadce0;color:#1a73e8;display:inline-block;text-decoration:none}#gb .gb_va:hover{background:#f8fbff;border-color:#dadce0;color:#174ea6}#gb .gb_va:focus{background:#f4f8ff;color:#174ea6;outline:1px solid #174ea6}#gb .gb_va:active,#gb .gb_va:focus:active{background:#ecf3fe;color:#174ea6}#gb .gb_va.gb_i{background:transparent;border:1px solid #5f6368;color:#8ab4f8;text-decoration:none}#gb .gb_va.gb_i:hover{background:rgba(255,255,255,.04);color:#e8eaed}#gb .gb_va.gb_i:focus{background:rgba(232,234,237,.12);color:#e8eaed;outline:1px solid #e8eaed}#gb .gb_va.gb_i:active,#gb .gb_va.gb_i:focus:active{background:rgba(232,234,237,.1);color:#e8eaed}.gb_Fd{display:inline-block;vertical-align:middle}.gb_Id .gb_q{bottom:-3px;right:-5px}.gb_f{position:relative}.gb_d{display:inline-block;outline:none;vertical-align:middle;border-radius:2px;box-sizing:border-box;height:40px;width:40px;cursor:pointer;text-decoration:none}#gb#gb a.gb_d{cursor:pointer;text-decoration:none}.gb_d,a.gb_d{color:#000}.gb_4e{border-color:transparent;border-bottom-color:#fff;border-style:dashed dashed solid;border-width:0 8.5px 8.5px;display:none;position:absolute;left:11.5px;top:33px;z-index:1;height:0;width:0;-webkit-animation:gb__a .2s;animation:gb__a .2s}.gb_5e{border-color:transparent;border-style:dashed dashed solid;border-width:0 8.5px 8.5px;display:none;position:absolute;left:11.5px;z-index:1;height:0;width:0;-webkit-animation:gb__a .2s;animation:gb__a .2s;border-bottom-color:rgba(0,0,0,.2);top:32px}x:-o-prefocus,div.gb_5e{border-bottom-color:#ccc}.gb_V{background:#fff;border:1px solid #ccc;border-color:rgba(0,0,0,.2);color:#000;-webkit-box-shadow:0 2px 10px rgba(0,0,0,.2);box-shadow:0 2px 10px rgba(0,0,0,.2);display:none;outline:none;overflow:hidden;position:absolute;right:8px;top:62px;-webkit-animation:gb__a .2s;animation:gb__a .2s;border-radius:2px;-webkit-user-select:text}.gb_Fd.gb_Da .gb_4e,.gb_Fd.gb_Da .gb_5e,.gb_Fd.gb_Da .gb_V,.gb_Da.gb_V{display:block}.gb_Fd.gb_Da.gb_6e .gb_4e,.gb_Fd.gb_Da.gb_6e .gb_5e{display:none}.gb_Jd{position:absolute;right:8px;top:62px;z-index:-1}.gb_Za .gb_4e,.gb_Za .gb_5e,.gb_Za .gb_V{margin-top:-10px}.gb_Fd:first-child,#gbsfw:first-child+.gb_Fd{padding-left:4px}.gb_ga.gb_Kd .gb_Fd:first-child{padding-left:0}.gb_Ld{position:relative}.gb_Wc .gb_Ld,.gb_cd .gb_Ld{float:right}.gb_d{padding:8px;cursor:pointer}.gb_d:after{content:"";position:absolute;top:-4px;bottom:-4px;left:-4px;right:-4px}.gb_ga .gb_9d:not(.gb_qa):focus img{background-color:rgba(0,0,0,.2);outline:none;-webkit-border-radius:50%;border-radius:50%}.gb_Md button svg,.gb_d{-webkit-border-radius:50%;border-radius:50%}.gb_Md button:focus:not(:focus-visible) svg,.gb_Md button:hover svg,.gb_Md button:active svg,.gb_d:focus:not(:focus-visible),.gb_d:hover,.gb_d:active,.gb_d[aria-expanded=true]{outline:none}.gb_Fc .gb_Md.gb_ie button:focus-visible svg,.gb_Md button:focus-visible svg,.gb_d:focus-visible{outline:1px solid #202124}.gb_Fc .gb_Md button:focus-visible svg,.gb_Fc .gb_d:focus-visible{outline:1px solid #f1f3f4}@media (forced-colors:active){.gb_Fc .gb_Md.gb_ie button:focus-visible svg,.gb_Md button:focus-visible svg,.gb_Fc .gb_Md button:focus-visible svg{outline:1px solid currentcolor}}.gb_Fc .gb_Md.gb_ie button:focus svg,.gb_Fc .gb_Md.gb_ie button:focus:hover svg,.gb_Md button:focus svg,.gb_Md button:focus:hover svg,.gb_d:focus,.gb_d:focus:hover{background-color:rgba(60,64,67,.1)}.gb_Fc .gb_Md.gb_ie button:active svg,.gb_Md button:active svg,.gb_d:active{background-color:rgba(60,64,67,.12)}.gb_Fc .gb_Md.gb_ie button:hover svg,.gb_Md button:hover svg,.gb_d:hover{background-color:rgba(60,64,67,.08)}.gb_wa .gb_d.gb_ya:hover{background-color:transparent}.gb_d[aria-expanded=true],.gb_d:hover[aria-expanded=true]{background-color:rgba(95,99,104,.24)}.gb_d[aria-expanded=true] .gb_h{fill:#5f6368;opacity:1}.gb_Fc .gb_Md button:hover svg,.gb_Fc .gb_d:hover{background-color:rgba(232,234,237,.08)}.gb_Fc .gb_Md button:focus svg,.gb_Fc .gb_Md button:focus:hover svg,.gb_Fc .gb_d:focus,.gb_Fc .gb_d:focus:hover{background-color:rgba(232,234,237,.1)}.gb_Fc .gb_Md button:active svg,.gb_Fc .gb_d:active{background-color:rgba(232,234,237,.12)}.gb_Fc .gb_d[aria-expanded=true],.gb_Fc .gb_d:hover[aria-expanded=true]{background-color:rgba(255,255,255,.12)}.gb_Fc .gb_d[aria-expanded=true] .gb_h{fill:#fff;opacity:1}.gb_Fd{padding:4px}.gb_ga.gb_Kd .gb_Fd{padding:4px 2px}.gb_ga.gb_Kd .gb_b.gb_Fd{padding-left:6px}.gb_V{z-index:991;line-height:normal}.gb_V.gb_Nd{left:0;right:auto}@media (max-width:350px){.gb_V.gb_Nd{left:0}}.gb_Od .gb_V{top:56px}.gb_m{display:none!important}.gb_Sa{visibility:hidden}.gb_k .gb_d,.gb_U .gb_k .gb_d{background-position:-64px -29px}.gb_A .gb_k .gb_d{background-position:-29px -29px;opacity:1}.gb_k .gb_d,.gb_k .gb_d:hover,.gb_k .gb_d:focus{opacity:1}.gb_n{display:none}@media screen and (max-width:319px){.gb_id:not(.gb_od) .gb_k{display:none;visibility:hidden}}.gb_q{display:none}.gb_5c{font-family:Google Sans,Roboto,Helvetica,Arial,sans-serif;font-size:20px;font-weight:400;letter-spacing:0.25px;line-height:48px;margin-bottom:2px;opacity:1;overflow:hidden;padding-left:16px;position:relative;text-overflow:ellipsis;vertical-align:middle;top:2px;white-space:nowrap;-webkit-flex:1 1 auto;-webkit-box-flex:1;flex:1 1 auto}.gb_5c.gb_6c{color:#3c4043}.gb_ga.gb_Ia .gb_5c{margin-bottom:0}.gb_7c.gb_8c .gb_5c{padding-left:4px}.gb_ga.gb_Ia .gb_9c{position:relative;top:-2px}.gb_ga{color:black;min-width:160px;position:relative;-webkit-transition:box-shadow 250ms;transition:box-shadow 250ms}.gb_ga.gb_Oc{min-width:120px}.gb_ga.gb_gd .gb_hd{display:none}.gb_ga.gb_gd .gb_id{height:56px}header.gb_ga{display:block}.gb_ga svg{fill:currentColor}.gb_jd{position:fixed;top:0;width:100%}.gb_kd{-webkit-box-shadow:0 4px 5px 0 rgba(0,0,0,.14),0 1px 10px 0 rgba(0,0,0,.12),0 2px 4px -1px rgba(0,0,0,.2);box-shadow:0 4px 5px 0 rgba(0,0,0,.14),0 1px 10px 0 rgba(0,0,0,.12),0 2px 4px -1px rgba(0,0,0,.2)}.gb_ld{height:64px}.gb_id{-webkit-box-sizing:border-box;box-sizing:border-box;position:relative;width:100%;display:-webkit-box;display:-webkit-flex;display:flex;-webkit-box-pack:space-between;-webkit-justify-content:space-between;justify-content:space-between;min-width:-webkit-min-content;min-width:min-content}.gb_ga:not(.gb_Ia) .gb_id{padding:8px}.gb_ga.gb_nd .gb_id{-webkit-flex:1 0 auto;-webkit-box-flex:1;flex:1 0 auto}.gb_ga .gb_id.gb_od.gb_pd{min-width:0}.gb_ga.gb_Ia .gb_id{padding:4px;padding-left:8px;min-width:0}.gb_hd{height:48px;vertical-align:middle;white-space:nowrap;-webkit-box-align:center;-webkit-align-items:center;align-items:center;display:-webkit-box;display:-webkit-flex;display:flex;-webkit-user-select:none}.gb_rd>.gb_hd{display:table-cell;width:100%}.gb_7c{padding-right:30px;box-sizing:border-box;-webkit-flex:1 0 auto;-webkit-box-flex:1;flex:1 0 auto}.gb_ga.gb_Ia .gb_7c{padding-right:14px}.gb_sd{-webkit-flex:1 1 100%;-webkit-box-flex:1;flex:1 1 100%}.gb_sd>:only-child{display:inline-block}.gb_td.gb_Xc{padding-left:4px}.gb_td.gb_ud,.gb_ga.gb_nd .gb_td,.gb_ga.gb_Ia:not(.gb_cd) .gb_td{padding-left:0}.gb_ga.gb_Ia .gb_td.gb_ud{padding-right:0}.gb_ga.gb_Ia .gb_td.gb_ud .gb_wa{margin-left:10px}.gb_Xc{display:inline}.gb_ga.gb_Rc .gb_td.gb_vd,.gb_ga.gb_cd .gb_td.gb_vd{padding-left:2px}.gb_5c{display:inline-block}.gb_td{-webkit-box-sizing:border-box;box-sizing:border-box;height:48px;line-height:normal;padding:0 4px;padding-left:30px;-webkit-flex:0 0 auto;-webkit-box-flex:0;flex:0 0 auto;-webkit-box-pack:flex-end;-webkit-justify-content:flex-end;justify-content:flex-end}.gb_cd{height:48px}.gb_ga.gb_cd{min-width:auto}.gb_cd .gb_td{float:right;padding-left:32px}.gb_cd .gb_td.gb_wd{padding-left:0}.gb_xd{font-size:14px;max-width:200px;overflow:hidden;padding:0 12px;text-overflow:ellipsis;white-space:nowrap;-webkit-user-select:text}.gb_bd{-webkit-transition:background-color .4s;-webkit-transition:background-color .4s;transition:background-color .4s}.gb_Dd{color:black}.gb_Fc{color:white}.gb_ga a,.gb_Lc a{color:inherit}.gb_L{color:rgba(0,0,0,.87)}.gb_ga svg,.gb_Lc svg,.gb_7c .gb_fd,.gb_Wc .gb_fd{color:#5f6368;opacity:1}.gb_Fc svg,.gb_Lc.gb_Pc svg,.gb_Fc .gb_7c .gb_fd,.gb_Fc .gb_7c .gb_Ec,.gb_Fc .gb_7c .gb_9c,.gb_Lc.gb_Pc .gb_fd{color:rgba(255,255,255,.87)}.gb_Fc .gb_7c .gb_Dc:not(.gb_Ed){opacity:.87}.gb_6c{color:inherit;opacity:1;text-rendering:optimizeLegibility;-webkit-font-smoothing:antialiased}.gb_Fc .gb_6c,.gb_Dd .gb_6c{opacity:1}.gb_yd{position:relative}.gb_zd{font-family:arial,sans-serif;line-height:normal;padding-right:15px}a.gb_x,span.gb_x{color:rgba(0,0,0,.87);text-decoration:none}.gb_Fc a.gb_x,.gb_Fc span.gb_x{color:white}a.gb_x:focus{outline-offset:2px}a.gb_x:hover{text-decoration:underline}.gb_y{display:inline-block;padding-left:15px}.gb_y .gb_x{display:inline-block;line-height:24px;vertical-align:middle}.gb_dd{font-family:Google Sans,Roboto,Helvetica,Arial,sans-serif;font-weight:500;font-size:14px;letter-spacing:.25px;line-height:16px;margin-left:10px;margin-right:8px;min-width:96px;padding:9px 23px;text-align:center;vertical-align:middle;border-radius:4px;box-sizing:border-box}.gb_ga.gb_cd .gb_dd{margin-left:8px}#gb a.gb_ua.gb_dd{cursor:pointer}.gb_ua.gb_dd:hover{background:#1b66c9;-webkit-box-shadow:0 1px 3px 1px rgba(66,64,67,.15),0 1px 2px 0 rgba(60,64,67,.3);box-shadow:0 1px 3px 1px rgba(66,64,67,.15),0 1px 2px 0 rgba(60,64,67,.3)}.gb_ua.gb_dd:focus,.gb_ua.gb_dd:hover:focus{background:#1c5fba;-webkit-box-shadow:0 1px 3px 1px rgba(66,64,67,.15),0 1px 2px 0 rgba(60,64,67,.3);box-shadow:0 1px 3px 1px rgba(66,64,67,.15),0 1px 2px 0 rgba(60,64,67,.3)}.gb_ua.gb_dd:active{background:#1b63c1;-webkit-box-shadow:0 1px 3px 1px rgba(66,64,67,.15),0 1px 2px 0 rgba(60,64,67,.3);box-shadow:0 1px 3px 1px rgba(66,64,67,.15),0 1px 2px 0 rgba(60,64,67,.3)}.gb_dd{background:#1a73e8;border:1px solid transparent}.gb_ga.gb_Ia .gb_dd{padding:9px 15px;min-width:80px}.gb_Ad{text-align:left}#gb .gb_Fc a.gb_dd:not(.gb_i),#gb.gb_Fc a.gb_dd{background:#fff;border-color:#dadce0;-webkit-box-shadow:none;box-shadow:none;color:#1a73e8}#gb a.gb_ua.gb_i.gb_dd{background:#8ab4f8;border:1px solid transparent;-webkit-box-shadow:none;box-shadow:none;color:#202124}#gb .gb_Fc a.gb_dd:hover:not(.gb_i),#gb.gb_Fc a.gb_dd:hover{background:#f8fbff;border-color:#cce0fc}#gb a.gb_ua.gb_i.gb_dd:hover{background:#93baf9;border-color:transparent;-webkit-box-shadow:0 1px 3px 1px rgba(0,0,0,.15),0 1px 2px rgba(0,0,0,.3);box-shadow:0 1px 3px 1px rgba(0,0,0,.15),0 1px 2px rgba(0,0,0,.3)}#gb .gb_Fc a.gb_dd:focus:not(.gb_i),#gb .gb_Fc a.gb_dd:focus:hover:not(.gb_i),#gb.gb_Fc a.gb_dd:focus:not(.gb_i),#gb.gb_Fc a.gb_dd:focus:hover:not(.gb_i){background:#f4f8ff;outline:1px solid #c9ddfc}#gb a.gb_ua.gb_i.gb_dd:focus,#gb a.gb_ua.gb_i.gb_dd:focus:hover{background:#a6c6fa;border-color:transparent;-webkit-box-shadow:none;box-shadow:none}#gb .gb_Fc a.gb_dd:active:not(.gb_i),#gb.gb_Fc a.gb_dd:active{background:#ecf3fe}#gb a.gb_ua.gb_i.gb_dd:active{background:#a1c3f9;-webkit-box-shadow:0 1px 2px rgba(60,64,67,.3),0 2px 6px 2px rgba(60,64,67,.15);box-shadow:0 1px 2px rgba(60,64,67,.3),0 2px 6px 2px rgba(60,64,67,.15)}.gb_l{display:none}@media screen and (max-width:319px){.gb_id:not(.gb_od) .gb_k{display:none;visibility:hidden}}.gb_wa{background-color:rgba(255,255,255,.88);border:1px solid #dadce0;-webkit-box-sizing:border-box;box-sizing:border-box;cursor:pointer;display:inline-block;max-height:48px;overflow:hidden;outline:none;padding:0;vertical-align:middle;width:134px;-webkit-border-radius:8px;border-radius:8px}.gb_wa.gb_i{background-color:transparent;border:1px solid #5f6368}.gb_Ca{display:inherit}.gb_wa.gb_i .gb_Ca{background:#fff;-webkit-border-radius:4px;border-radius:4px;display:inline-block;left:8px;margin-right:5px;position:relative;padding:3px;top:-1px}.gb_wa:hover{border:1px solid #d2e3fc;background-color:rgba(248,250,255,.88)}.gb_wa.gb_i:hover{background-color:rgba(241,243,244,.04);border:1px solid #5f6368}.gb_wa:focus-visible,.gb_wa:focus{background-color:#fff;outline:1px solid #202124;-webkit-box-shadow:0 1px 2px 0 rgba(60,64,67,.3),0 1px 3px 1px rgba(60,64,67,.15);box-shadow:0 1px 2px 0 rgba(60,64,67,.3),0 1px 3px 1px rgba(60,64,67,.15)}.gb_wa.gb_i:focus-visible,.gb_wa.gb_i:focus{background-color:rgba(241,243,244,.12);outline:1px solid #f1f3f4;-webkit-box-shadow:0 1px 3px 1px rgba(0,0,0,.15),0 1px 2px 0 rgba(0,0,0,.3);box-shadow:0 1px 3px 1px rgba(0,0,0,.15),0 1px 2px 0 rgba(0,0,0,.3)}.gb_wa.gb_i:active,.gb_wa.gb_Da.gb_i:focus{background-color:rgba(241,243,244,.1);border:1px solid #5f6368}.gb_Ea{display:inline-block;padding-bottom:2px;padding-left:7px;padding-top:2px;text-align:center;vertical-align:middle;line-height:32px;width:78px}.gb_wa.gb_i .gb_Ea{line-height:26px;margin-left:0;padding-bottom:0;padding-left:0;padding-top:0;width:72px}.gb_Ea.gb_Fa{background-color:#f1f3f4;-webkit-border-radius:4px;border-radius:4px;margin-left:8px;padding-left:0;line-height:30px}.gb_Ea.gb_Fa .gb_Ha{vertical-align:middle}.gb_ga:not(.gb_Ia) .gb_wa{margin-left:10px;margin-right:4px}.gb_Ja{max-height:32px;width:78px}.gb_wa.gb_i .gb_Ja{max-height:26px;width:72px}.gb_p{-webkit-background-size:32px 32px;background-size:32px 32px;border:0;-webkit-border-radius:50%;border-radius:50%;display:block;margin:0px;position:relative;height:32px;width:32px;z-index:0}.gb_Ta{background-color:#e8f0fe;border:1px solid rgba(32,33,36,.08);position:relative}.gb_Ta.gb_p{height:30px;width:30px}.gb_Ta.gb_p:hover,.gb_Ta.gb_p:active{-webkit-box-shadow:none;box-shadow:none}.gb_Ua{background:#fff;border:none;-webkit-border-radius:50%;border-radius:50%;bottom:2px;-webkit-box-shadow:0px 1px 2px 0px rgba(60,64,67,.30),0px 1px 3px 1px rgba(60,64,67,.15);box-shadow:0px 1px 2px 0px rgba(60,64,67,.30),0px 1px 3px 1px rgba(60,64,67,.15);height:14px;margin:2px;position:absolute;right:0;width:14px}.gb_Va{color:#1f71e7;font:400 22px/32px Google Sans,Roboto,Helvetica,Arial,sans-serif;text-align:center;text-transform:uppercase}@media (-webkit-min-device-pixel-ratio:1.25),(min-resolution:1.25dppx),(min-device-pixel-ratio:1.25){.gb_p::before,.gb_Wa::before{display:inline-block;-webkit-transform:scale(0.5);-webkit-transform:scale(0.5);transform:scale(0.5);-webkit-transform-origin:left 0;-webkit-transform-origin:left 0;transform-origin:left 0}.gb_C .gb_Wa::before{-webkit-transform:scale(scale(0.416666667));-webkit-transform:scale(scale(0.416666667));transform:scale(scale(0.416666667))}}.gb_p:hover,.gb_p:focus{-webkit-box-shadow:0 1px 0 rgba(0,0,0,.15);box-shadow:0 1px 0 rgba(0,0,0,.15)}.gb_p:active{-webkit-box-shadow:inset 0 2px 0 rgba(0,0,0,.15);box-shadow:inset 0 2px 0 rgba(0,0,0,.15)}.gb_p:active::after{background:rgba(0,0,0,.1);-webkit-border-radius:50%;border-radius:50%;content:"";display:block;height:100%}.gb_Xa{cursor:pointer;line-height:40px;min-width:30px;opacity:.75;overflow:hidden;vertical-align:middle;text-overflow:ellipsis}.gb_d.gb_Xa{width:auto}.gb_Xa:hover,.gb_Xa:focus{opacity:.85}.gb_Za .gb_Xa,.gb_Za .gb_0a{line-height:26px}#gb#gb.gb_Za a.gb_Xa,.gb_Za .gb_0a{font-size:11px;height:auto}.gb_1a{border-top:4px solid #000;border-left:4px dashed transparent;border-right:4px dashed transparent;display:inline-block;margin-left:6px;opacity:.75;vertical-align:middle}.gb_ya:hover .gb_1a{opacity:.85}.gb_wa>.gb_b{padding:3px 3px 3px 4px}.gb_2a.gb_Sa{color:#fff}.gb_A .gb_Xa,.gb_A .gb_1a{opacity:1}#gb#gb.gb_A.gb_A a.gb_Xa,#gb#gb .gb_A.gb_A a.gb_Xa{color:#fff}.gb_A.gb_A .gb_1a{border-top-color:#fff;opacity:1}.gb_U .gb_p:hover,.gb_A .gb_p:hover,.gb_U .gb_p:focus,.gb_A .gb_p:focus{-webkit-box-shadow:0 1px 0 rgba(0,0,0,.15),0 1px 2px rgba(0,0,0,.2);box-shadow:0 1px 0 rgba(0,0,0,.15),0 1px 2px rgba(0,0,0,.2)}.gb_3a .gb_b,.gb_4a .gb_b{position:absolute;right:1px}.gb_b.gb_z,.gb_5a.gb_z,.gb_ya.gb_z{-webkit-flex:0 1 auto;-webkit-box-flex:0;flex:0 1 auto}.gb_6a.gb_7a .gb_Xa{width:30px!important}.gb_o{height:40px;position:absolute;right:-5px;top:-5px;width:40px}.gb_8a .gb_o,.gb_9a .gb_o{right:0;top:0}.gb_b .gb_d{padding:4px}.gb_r{display:none}sentinel{}</style><script nonce="">;this.gbar_={CONFIG:[[[0,"www.gstatic.com","og.qtm.en_US.hYsvGMblRtE.2019.O","co.in","en","425",0,[4,2,"","","","652318230","0"],null,"Y-GcZuKJItDRp84P_cKAuAg",null,0,"og.qtm.WbLHcnqtuDY.L.W.O","AA2YrTtTSQ_F1fFA043-VJ0kUaOQJ3WUvA","AA2YrTtcIX-HnDSsLAqIZhJE-F41GqQWkA","",2,1,200,"IND",null,null,"425","425",1,null,null,114591953,1],null,[1,0.1000000014901161,2,1],null,[1,0,0,null,"0","azhagesanragul@gmail.com","","ALumJKKtiZxS7TNsCteFEzpY1-TJq4MeW-akg3rIXDQD2_p-A53FkmonrMYC9LM2HBiPPM_ed-B1nL6p7MzlLHJ7gV_Hz_uzhA",0,0,0],[0,0,"",1,0,0,0,0,0,0,null,0,0,null,0,0,null,null,0,0,0,"","","","","","",null,0,0,0,0,0,null,null,null,"rgba(32,33,36,1)","rgba(255,255,255,1)",0,0,0,null,null,1,0,0,null,0],["%1$s (default)","Brand account",1,"%1$s (delegated)",1,null,83,"https://colab.research.google.com/drive/1vbypCXK5x0GmLKj9bG5zQWB7WIP2Erti?authuser=$authuser",null,null,null,1,"https://accounts.google.com/ListAccounts?listPages=0\u0026pid=425\u0026gpsia=1\u0026source=ogb\u0026atic=1\u0026mo=1\u0026mn=1\u0026hl=en\u0026ts=250",0,"dashboard",null,null,null,null,"Profile","",1,null,"Signed out","https://accounts.google.com/AccountChooser?source=ogb\u0026continue=$continue\u0026Email=$email\u0026ec=GAhAqQM","https://accounts.google.com/RemoveLocalAccount?source=ogb","Remove","Sign in",0,1,1,0,1,1,0,null,null,null,"Session expired",null,null,null,"Visitor",null,"Default","Delegated","Sign out of all accounts",0,null,null,0,null,null,"myaccount.google.com","https",0,1,0],null,["1","gci_91f30755d6a6b787dcc2a4062e6e9824.js","googleapis.client:gapi.iframes","0","en"],null,null,null,null,["m;/_/scs/abc-static/_/js/k=gapi.gapi.en.MGCxJbnW_Xw.O/am=AAAg/d=1/rs=AHpOoo9xa4htLEVH9xe6c4ToUehtTaLWvA/m=__features__","https://apis.google.com","","","1","",null,1,"es_plusone_gc_20240708.1_p2","en",null,0],[0.009999999776482582,"co.in","425",[null,"","0",null,1,5184000,null,null,"",null,null,null,null,null,0,null,0,null,1,0,0,0,null,null,0,0,null,0,0,0,0,0],null,null,null,0,null,null,["5061451","google\\.(com|ru|ca|by|kz|com\\.mx|com\\.tr)$",1]],[1,null,null,40400,425,"IND","en","652318230.0",8,null,1,0,null,null,null,null,"3700949,3701242,3701246,3701389,3701430,3701440",null,null,null,"Y-GcZuKJItDRp84P_cKAuAg",0,0,0,null,2,5,"nn",68,0,0,0,0,1,114591953,0,0],[[null,null,null,"https://www.gstatic.com/og/_/js/k=og.qtm.en_US.hYsvGMblRtE.2019.O/rt=j/m=qabr,qgl,q_dnp,qcwid,qbd,qapid,qads,qrcd,q_dg/exm=qaaw,qadd,qaid,qein,qhaw,qhba,qhbr,qhch,qhga,qhid,qhin/d=1/ed=1/rs=AA2YrTtTSQ_F1fFA043-VJ0kUaOQJ3WUvA"],[null,null,null,"https://www.gstatic.com/og/_/ss/k=og.qtm.WbLHcnqtuDY.L.W.O/m=qcwid/excm=qaaw,qadd,qaid,qein,qhaw,qhba,qhbr,qhch,qhga,qhid,qhin/d=1/ed=1/ct=zgms/rs=AA2YrTtcIX-HnDSsLAqIZhJE-F41GqQWkA"]],null,null,null,[[[null,null,[null,null,null,"https://ogs.google.com/u/0/widget/account?yac=1\u0026amb=1"],0,414,436,57,4,1,0,0,65,66,8000,"https://accounts.google.com/SignOutOptions?hl=en\u0026continue=https://colab.research.google.com/drive/1vbypCXK5x0GmLKj9bG5zQWB7WIP2Erti\u0026ec=GBRAqQM",68,2,null,null,1,113,"Something went wrong.%1$s Refresh to try again or %2$schoose another account%3$s.",3,null,null,75,0,null,null,null,null,null,null,null,"/widget/account",["https","myaccount.google.com",0,32,83,0],0,0,1,["Critical security alert","Important account alert","Storage usage alert"],0,1,null,1,1,1,1,null,null,0,0,0,0,0,0],[null,null,[null,null,null,"https://ogs.google.com/u/0/widget/callout/sid?dc=1"],null,280,420,70,25,0,null,0,null,null,8000,null,71,4,null,null,null,null,null,null,null,null,76,null,null,null,107,108,109,"",null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,0]],null,null,"425","425",1,0,null,"en",0,["https://colab.research.google.com/drive/1vbypCXK5x0GmLKj9bG5zQWB7WIP2Erti?authuser=$authuser","https://accounts.google.com/AddSession?hl=en\u0026continue=https://colab.research.google.com/drive/1vbypCXK5x0GmLKj9bG5zQWB7WIP2Erti\u0026ec=GAlAqQM","https://accounts.google.com/Logout?hl=en\u0026continue=https://colab.research.google.com/drive/1vbypCXK5x0GmLKj9bG5zQWB7WIP2Erti\u0026timeStmp=1721557347\u0026secTok=.AG5fkS8ZpuqZjbSdKq_9yqou0EJd5imPRw\u0026ec=GAdAqQM","https://accounts.google.com/ListAccounts?listPages=0\u0026pid=425\u0026gpsia=1\u0026source=ogb\u0026atic=1\u0026mo=1\u0026mn=1\u0026hl=en\u0026ts=250",0,0,"",0,0,null,0,0,"https://accounts.google.com/ServiceLogin?passive=true\u0026continue=https%3A%2F%2Fcolab.research.google.com%2Fdrive%2F1vbypCXK5x0GmLKj9bG5zQWB7WIP2Erti\u0026ec=GAZAqQM",1,1,0],0,0,0,[null,"https://colab.research.google.com/drive/1vbypCXK5x0GmLKj9bG5zQWB7WIP2Erti",null,null,null,1,null,0,0,"","","99","https://ogads-pa.clients6.google.com",0,0,0,"","",0,0,0,86400],0],null,[["mousedown","touchstart","touchmove","wheel","keydown"],300000],[[null,null,null,"https://accounts.google.com/RotateCookiesPage"],3,null,null,null,0,1]]],};this.gbar_=this.gbar_||{};(function(_){var window=this;
try{
_._F_toggles_initialize=function(a){(typeof globalThis!=="undefined"?globalThis:typeof self!=="undefined"?self:this)._F_toggles=a||[]};(0,_._F_toggles_initialize)([]);
/*

 Copyright The Closure Library Authors.
 SPDX-License-Identifier: Apache-2.0
*/
var fa,ha,ma,oa,pa,ya,za,Ba,Ca,Da,Ga,Wa,Va,Ya,$a,Za,ab,bb,eb,fb,jb,mb,gb,lb,kb,ib,hb,nb,ob,xb,zb,Ab,Bb,Cb;_.aa=function(a,b){if(Error.captureStackTrace)Error.captureStackTrace(this,_.aa);else{const c=Error().stack;c&&(this.stack=c)}a&&(this.message=String(a));b!==void 0&&(this.cause=b)};_.ba=function(a){_.t.setTimeout(()=>{throw a;},0)};_.ca=function(){var a=_.t.navigator;return a&&(a=a.userAgent)?a:""};fa=function(a){return da?ea?ea.brands.some(({brand:b})=>b&&b.indexOf(a)!=-1):!1:!1};
_.u=function(a){return _.ca().indexOf(a)!=-1};ha=function(){return da?!!ea&&ea.brands.length>0:!1};_.ia=function(){return ha()?!1:_.u("Opera")};_.ka=function(){return ha()?!1:_.u("Trident")||_.u("MSIE")};_.la=function(){return _.u("Firefox")||_.u("FxiOS")};_.na=function(){return _.u("Safari")&&!(ma()||(ha()?0:_.u("Coast"))||_.ia()||(ha()?0:_.u("Edge"))||(ha()?fa("Microsoft Edge"):_.u("Edg/"))||(ha()?fa("Opera"):_.u("OPR"))||_.la()||_.u("Silk")||_.u("Android"))};
ma=function(){return ha()?fa("Chromium"):(_.u("Chrome")||_.u("CriOS"))&&!(ha()?0:_.u("Edge"))||_.u("Silk")};oa=function(){return da?!!ea&&!!ea.platform:!1};pa=function(){return _.u("iPhone")&&!_.u("iPod")&&!_.u("iPad")};_.qa=function(){return pa()||_.u("iPad")||_.u("iPod")};_.ra=function(){return oa()?ea.platform==="macOS":_.u("Macintosh")};_.ta=function(a,b){return _.sa(a,b)>=0};
_.ua=function(a){let b="",c=0;const d=a.length-10240;for(;c<d;)b+=String.fromCharCode.apply(null,a.subarray(c,c+=10240));b+=String.fromCharCode.apply(null,c?a.subarray(c):a);return btoa(b)};_.va=function(a){return a!=null&&a instanceof Uint8Array};_.wa=function(a){return Array.prototype.slice.call(a)};_.xa=function(a){return!!((a[_.v]|0)&2)};ya=function(a,b){b[_.v]=(a|0)&-14591};za=function(a,b){b[_.v]=(a|34)&-14557};Ba=function(a){return!(!a||typeof a!=="object"||a.i!==Aa)};
Ca=function(a){return a!==null&&typeof a==="object"&&!Array.isArray(a)&&a.constructor===Object};Da=function(a,b,c){if(!Array.isArray(a)||a.length)return!1;const d=a[_.v]|0;if(d&1)return!0;if(!(b&&(Array.isArray(b)?b.includes(c):b.has(c))))return!1;a[_.v]=d|1;return!0};_.Ea=function(a){if(a&2)throw Error();};Ga=function(a,b){(b=_.Fa?b[_.Fa]:void 0)&&(a[_.Fa]=_.wa(b))};_.Ia=function(){const a=Error();Ha(a,"incident");_.ba(a)};_.Ja=function(a){a=Error(a);Ha(a,"warning");return a};
_.La=function(a){if(typeof a!=="boolean")throw Error("s`"+_.Ka(a)+"`"+a);return a};_.Ma=function(a){if(!Number.isFinite(a))throw _.Ja("enum");return a|0};_.Na=function(a){if(typeof a!=="number")throw _.Ja("int32");if(!Number.isFinite(a))throw _.Ja("int32");return a|0};_.Oa=function(a){if(a!=null&&typeof a!=="string")throw Error();return a};_.Pa=function(a){return a==null||typeof a==="string"?a:void 0};
_.Ra=function(a,b,c){if(a!=null&&typeof a==="object"&&a.Dd===_.Qa)return a;if(Array.isArray(a)){var d=a[_.v]|0,e=d;e===0&&(e|=c&32);e|=c&2;e!==d&&(a[_.v]=e);return new b(a)}};_.Ta=function(a,b){Sa=b;a=new a(b);Sa=void 0;return a};
_.Ua=function(a,b,c){a==null&&(a=Sa);Sa=void 0;if(a==null){var d=96;c?(a=[c],d|=512):a=[];b&&(d=d&-16760833|(b&1023)<<14)}else{if(!Array.isArray(a))throw Error("t");d=a[_.v]|0;if(d&2048)throw Error("u");if(d&64)return a;d|=64;if(c&&(d|=512,c!==a[0]))throw Error("v");a:{c=a;const e=c.length;if(e){const f=e-1;if(Ca(c[f])){d|=256;b=f-(+!!(d&512)-1);if(b>=1024)throw Error("w");d=d&-16760833|(b&1023)<<14;break a}}if(b){b=Math.max(b,e-(+!!(d&512)-1));if(b>1024)throw Error("x");d=d&-16760833|(b&1023)<<14}}}a[_.v]=
d;return a};Wa=function(a,b){return Va(b)};Va=function(a){switch(typeof a){case "number":return isFinite(a)?a:String(a);case "boolean":return a?1:0;case "object":if(a)if(Array.isArray(a)){if(Da(a,void 0,0))return}else{if(_.va(a))return _.ua(a);if("function"==typeof _.Xa&&a instanceof _.Xa)return a.j()}}return a};Ya=function(a,b,c){const d=_.wa(a);var e=d.length;const f=b&256?d[e-1]:void 0;e+=f?-1:0;for(b=b&512?1:0;b<e;b++)d[b]=c(d[b]);if(f){b=d[b]={};for(const g in f)b[g]=c(f[g])}Ga(d,a);return d};
$a=function(a,b,c,d,e){if(a!=null){if(Array.isArray(a))a=Da(a,void 0,0)?void 0:e&&(a[_.v]|0)&2?a:Za(a,b,c,d!==void 0,e);else if(Ca(a)){const f={};for(let g in a)f[g]=$a(a[g],b,c,d,e);a=f}else a=b(a,d);return a}};Za=function(a,b,c,d,e){const f=d||c?a[_.v]|0:0;d=d?!!(f&32):void 0;const g=_.wa(a);for(let h=0;h<g.length;h++)g[h]=$a(g[h],b,c,d,e);c&&(Ga(g,a),c(f,g));return g};ab=function(a){return a.Dd===_.Qa?a.toJSON():Va(a)};
bb=function(a,b,c=za){if(a!=null){if(a instanceof Uint8Array)return b?a:new Uint8Array(a);if(Array.isArray(a)){var d=a[_.v]|0;if(d&2)return a;b&&(b=d===0||!!(d&32)&&!(d&64||!(d&16)));return b?(a[_.v]=(d|34)&-12293,a):Za(a,bb,d&4?za:c,!0,!0)}a.Dd===_.Qa&&(c=a.ma,d=c[_.v],a=d&2?a:_.Ta(a.constructor,_.cb(c,d,!0)));return a}};_.cb=function(a,b,c){const d=c||b&2?za:ya,e=!!(b&32);a=Ya(a,b,f=>bb(f,e,d));a[_.v]=a[_.v]|32|(c?2:0);return a};
_.db=function(a){const b=a.ma,c=b[_.v];return c&2?_.Ta(a.constructor,_.cb(b,c,!1)):a};eb=function(a){return a};fb=function(a){return a};jb=function(a,b,c,d){return gb(a,b,c,d,hb,ib)};mb=function(a,b,c,d){return gb(a,b,c,d,kb,lb)};
gb=function(a,b,c,d,e,f){if(!c.length&&!d)return 0;var g=0;let h=0,k=0;var l=0;let m=0;for(var p=c.length-1;p>=0;p--){var r=c[p];d&&p===c.length-1&&r===d||(l++,r!=null&&k++)}if(d)for(var q in d)p=+q,isNaN(p)||(m+=nb(p),h++,p>g&&(g=p));l=e(l,k)+f(h,g,m);q=k;p=h;r=g;let y=m;for(let F=c.length-1;F>=0;F--){var D=c[F];if(D==null||d&&F===c.length-1&&D===d)continue;D=F-b;const G=e(D,q)+f(p,r,y);G<l&&(a=1+D,l=G);p++;q--;y+=nb(D);r=Math.max(r,D)}b=e(0,0)+f(p,r,y);b<l&&(a=0,l=b);if(d){p=h;r=g;y=m;q=k;for(const F in d)d=
+F,isNaN(d)||d>=1024||(p--,q++,y-=F.length,g=e(d,q)+f(p,r,y),g<l&&(a=1+d,l=g))}return a};lb=function(a,b,c){return c+a*3+(a>1?a-1:0)};kb=function(a,b){return(a>1?a-1:0)+(a-b)*4};ib=function(a,b){return a==0?0:9*Math.max(1<<32-Math.clz32(a+a/2-1),4)<=b?a==0?0:a<4?100+(a-1)*16:a<6?148+(a-4)*16:a<12?244+(a-6)*16:a<22?436+(a-12)*19:a<44?820+(a-22)*17:52+32*a:40+4*b};hb=function(a){return 40+4*a};nb=function(a){return a>=100?a>=1E4?Math.ceil(Math.log10(1+a)):a<1E3?3:4:a<10?1:2};
ob=function(a,b,c,d){b=d+(+!!(b&512)-1);if(!(b<0||b>=a.length||b>=c))return a[b]};_.qb=function(a,b,c,d,e){const f=b>>14&1023||536870912;if(c>=f||e&&!pb){let g=b;if(b&256)e=a[a.length-1];else{if(d==null)return g;e=a[f+(+!!(b&512)-1)]={};g|=256}e[c]=d;c<f&&(a[c+(+!!(b&512)-1)]=void 0);g!==b&&(a[_.v]=g);return g}a[c+(+!!(b&512)-1)]=d;b&256&&(a=a[a.length-1],c in a&&delete a[c]);return b};_.sb=function(a,b,c,d){a=a.ma;let e=a[_.v];const f=_.rb(a,e,c,d);b=_.Ra(f,b,e);b!==f&&b!=null&&_.qb(a,e,c,b,d);return b};
_.tb=function(a,b){return a!=null?a:b};
xb=function(a){var b=ub?a.ma:Za(a.ma,ab,void 0,void 0,!1);{var c=!ub;var d=vb?void 0:a.constructor.oa;var e=(c?a.ma:b)[_.v];let C=b.length;if(C){var f=b[C-1],g=Ca(f);g?C--:f=void 0;a=+!!(e&512)-1;var h=C-a,k=!!wb&&pb&&!(e&512),l;e=(l=wb)!=null?l:fb;e=k?e(h,a,b,f):h;l=(h=k&&h!==e)?Array.prototype.slice.call(b,0,C):b;if(g||h){b:{var m=l;var p=f;g={};k=!1;if(h)for(var r=Math.max(0,e+a);r<m.length;r++){var q=m[r],y=r-a;q==null||Da(q,d,y)||Ba(q)&&q.size===0||(m[r]=void 0,g[y]=q,k=!0)}if(p)for(var D in p)if(r=
+D,isNaN(r))g[D]=p[D];else if(q=p[D],Array.isArray(q)&&(Da(q,d,+D)||Ba(q)&&q.size===0)&&(q=null),q==null&&(k=!0),h&&r<e){k=!0;q=r+a;for(y=m.length;y<=q;y++)m.push(void 0);m[q]=p[r]}else q!=null&&(g[D]=q);if(k){for(var F in g){p=g;break b}p=null}}m=p==null?f!=null:p!==f}h&&(C=l.length);for(var G;C>0;C--){F=C-1;D=l[F];F-=a;if(!(D==null||Da(D,d,F)||Ba(D)&&D.size===0))break;G=!0}if(l!==b||m||G){if(!h&&!c)l=Array.prototype.slice.call(l,0,C);else if(G||m||p)l.length=C;p&&l.push(p)}b=l}}return b};
_.w=function(a,b){return a!=null?!!a:!!b};_.x=function(a,b){b==void 0&&(b="");return a!=null?a:b};_.yb=function(a){for(const b in a)return!1;return!0};zb=typeof Object.defineProperties=="function"?Object.defineProperty:function(a,b,c){if(a==Array.prototype||a==Object.prototype)return a;a[b]=c.value;return a};
Ab=function(a){a=["object"==typeof globalThis&&globalThis,a,"object"==typeof window&&window,"object"==typeof self&&self,"object"==typeof global&&global];for(var b=0;b<a.length;++b){var c=a[b];if(c&&c.Math==Math)return c}throw Error("a");};Bb=Ab(this);Cb=function(a,b){if(b)a:{var c=Bb;a=a.split(".");for(var d=0;d<a.length-1;d++){var e=a[d];if(!(e in c))break a;c=c[e]}a=a[a.length-1];d=c[a];b=b(d);b!=d&&b!=null&&zb(c,a,{configurable:!0,writable:!0,value:b})}};
Cb("Symbol.dispose",function(a){return a?a:Symbol("b")});Cb("globalThis",function(a){return a||Bb});Cb("Promise.prototype.finally",function(a){return a?a:function(b){return this.then(function(c){return Promise.resolve(b()).then(function(){return c})},function(c){return Promise.resolve(b()).then(function(){throw c;})})}});var Fb,Gb,Ib,Jb;_.Db=_.Db||{};_.t=this||self;Fb=function(a,b){var c=_.Eb("WIZ_global_data.oxN3nb");a=c&&c[a];return a!=null?a:b};Gb=_.t._F_toggles||[];_.Eb=function(a,b){a=a.split(".");b=b||_.t;for(var c=0;c<a.length;c++)if(b=b[a[c]],b==null)return null;return b};_.Ka=function(a){var b=typeof a;return b!="object"?b:a?Array.isArray(a)?"array":b:"null"};_.Hb="closure_uid_"+(Math.random()*1E9>>>0);Ib=function(a,b,c){return a.call.apply(a.bind,arguments)};
Jb=function(a,b,c){if(!a)throw Error();if(arguments.length>2){var d=Array.prototype.slice.call(arguments,2);return function(){var e=Array.prototype.slice.call(arguments);Array.prototype.unshift.apply(e,d);return a.apply(b,e)}}return function(){return a.apply(b,arguments)}};_.z=function(a,b,c){_.z=Function.prototype.bind&&Function.prototype.bind.toString().indexOf("native code")!=-1?Ib:Jb;return _.z.apply(null,arguments)};
_.A=function(a,b){a=a.split(".");var c=_.t;a[0]in c||typeof c.execScript=="undefined"||c.execScript("var "+a[0]);for(var d;a.length&&(d=a.shift());)a.length||b===void 0?c[d]&&c[d]!==Object.prototype[d]?c=c[d]:c=c[d]={}:c[d]=b};_.B=function(a,b){function c(){}c.prototype=b.prototype;a.W=b.prototype;a.prototype=new c;a.prototype.constructor=a;a.dj=function(d,e,f){for(var g=Array(arguments.length-2),h=2;h<arguments.length;h++)g[h-2]=arguments[h];return b.prototype[e].apply(d,g)}};_.B(_.aa,Error);_.aa.prototype.name="CustomError";var Kb=!!(Gb[0]&1024),Lb=!!(Gb[0]&32),Mb=!!(Gb[0]&2048),Nb=!!(Gb[0]&16),Ob=!!(Gb[0]&8);var Pb=Fb(1,!0),da=Kb?Mb:Fb(610401301,!1),pb=Kb?Lb||!Ob:Fb(645172343,Pb);var vb=Kb?Lb||!Nb:Fb(188588736,Pb);_.Qb=typeof TextDecoder!=="undefined";_.Rb=typeof TextEncoder!=="undefined";_.Tb=String.prototype.trim?function(a){return a.trim()}:function(a){return/^[\s\xa0]*([\s\S]*?)[\s\xa0]*$/.exec(a)[1]};_.Ub=function(){return _.ca().toLowerCase().indexOf("webkit")!=-1};var ea,Vb=_.t.navigator;ea=Vb?Vb.userAgentData||null:null;_.sa=function(a,b){return Array.prototype.indexOf.call(a,b,void 0)};_.Wb=function(a,b,c){Array.prototype.forEach.call(a,b,c)};_.Xb=function(a){_.Xb[" "](a);return a};_.Xb[" "]=function(){};var jc;_.Yb=_.ia();_.Zb=_.ka();_.$b=_.u("Edge");_.ac=_.u("Gecko")&&!(_.Ub()&&!_.u("Edge"))&&!(_.u("Trident")||_.u("MSIE"))&&!_.u("Edge");_.bc=_.Ub()&&!_.u("Edge");_.cc=_.ra();_.dc=oa()?ea.platform==="Windows":_.u("Windows");_.ec=oa()?ea.platform==="Android":_.u("Android");_.fc=pa();_.gc=_.u("iPad");_.hc=_.u("iPod");_.ic=_.qa();
a:{var kc="",lc=function(){var a=_.ca();if(_.ac)return/rv:([^\);]+)(\)|;)/.exec(a);if(_.$b)return/Edge\/([\d\.]+)/.exec(a);if(_.Zb)return/\b(?:MSIE|rv)[: ]([^\);]+)(\)|;)/.exec(a);if(_.bc)return/WebKit\/(\S+)/.exec(a);if(_.Yb)return/(?:Version)[ \/]?(\S+)/.exec(a)}();lc&&(kc=lc?lc[1]:"");if(_.Zb){var mc,nc=_.t.document;mc=nc?nc.documentMode:void 0;if(mc!=null&&mc>parseFloat(kc)){jc=String(mc);break a}}jc=kc}_.oc=jc;_.pc=_.la();_.qc=pa()||_.u("iPod");_.rc=_.u("iPad");_.sc=_.u("Android")&&!(ma()||_.la()||_.ia()||_.u("Silk"));_.tc=ma();_.uc=_.na()&&!_.qa();var vc;_.v=Symbol();vc=Symbol();_.wc=Symbol();_.xc=Symbol();var Aa,zc;_.Qa={};Aa={};zc=[];zc[_.v]=55;_.yc=Object.freeze(zc);Object.freeze({});Object.freeze({});_.Ac=Object.freeze({});var Ha=function(a,b){a.__closure__error__context__984382||(a.__closure__error__context__984382={});a.__closure__error__context__984382.severity=b};var Bc;var Sa;_.Cc=function(a,b){a=a.ma;return _.rb(a,a[_.v],b)};_.rb=function(a,b,c,d){if(c===-1)return null;const e=b>>14&1023||536870912;if(c>=e){if(b&256)return a[a.length-1][c]}else{var f=a.length;if(d&&b&256&&(d=a[f-1][c],d!=null)){if(ob(a,b,e,c)&&vc!=null){var g;a=(g=Bc)!=null?g:Bc={};g=a[vc]||0;g>=4||(a[vc]=g+1,_.Ia())}return d}return ob(a,b,e,c)}};_.Dc=function(a,b,c){const d=a.ma;let e=d[_.v];_.Ea(e);_.qb(d,e,b,c);return a};
_.E=function(a,b,c,d=!1){b=_.sb(a,b,c,d);if(b==null)return b;a=a.ma;let e=a[_.v];if(!(e&2)){const f=_.db(b);f!==b&&(b=f,_.qb(a,e,c,b,d))}return b};_.H=function(a,b,c){c==null&&(c=void 0);return _.Dc(a,b,c)};_.I=function(a,b){a=_.Cc(a,b);return a==null||typeof a==="boolean"?a:typeof a==="number"?!!a:void 0};_.J=function(a,b){return _.Pa(_.Cc(a,b))};_.K=function(a,b,c=!1){return _.tb(_.I(a,b),c)};_.L=function(a,b){return _.tb(_.J(a,b),"")};_.M=function(a,b,c){return _.Dc(a,b,c==null?c:_.La(c))};
_.N=function(a,b,c){return _.Dc(a,b,c==null?c:_.Na(c))};_.O=function(a,b,c){return _.Dc(a,b,_.Oa(c))};_.P=function(a,b,c){return _.Dc(a,b,c==null?c:_.Ma(c))};var wb,ub;_.Q=class{constructor(a,b,c){this.ma=_.Ua(a,b,c)}toJSON(){return xb(this)}Ga(a){try{return ub=!0,a&&(wb=a===fb||a!==eb&&a!==jb&&a!==mb?fb:a),JSON.stringify(xb(this),Wa)}finally{a&&(wb=void 0),ub=!1}}uc(){return _.xa(this.ma)}};_.Q.prototype.Dd=_.Qa;_.Q.prototype.toString=function(){try{return ub=!0,xb(this).toString()}finally{ub=!1}};_.Ec=Symbol();_.Fc=Symbol();_.Gc=Symbol();_.Hc=Symbol();_.Ic=Symbol();var Jc=class extends _.Q{constructor(){super()}};_.Kc=class extends _.Q{constructor(){super()}D(a){return _.N(this,3,a)}};_.Kc.oa=[67];var Lc=class extends _.Q{constructor(a){super(a)}Lc(a){return _.O(this,24,a)}};_.Mc=class extends _.Q{constructor(a){super(a)}};_.R=function(){this.Ea=this.Ea;this.ea=this.ea};_.R.prototype.Ea=!1;_.R.prototype.isDisposed=function(){return this.Ea};_.R.prototype.dispose=function(){this.Ea||(this.Ea=!0,this.R())};_.R.prototype[Symbol.dispose]=function(){this.dispose()};_.R.prototype.R=function(){if(this.ea)for(;this.ea.length;)this.ea.shift()()};var Nc=class extends _.R{constructor(){var a=window;super();this.o=a;this.i=[];this.j={}}resolve(a){var b=this.o;a=a.split(".");for(var c=a.length,d=0;d<c;++d)if(b[a[d]])b=b[a[d]];else return null;return b instanceof Function?b:null}Cb(){for(var a=this.i.length,b=this.i,c=[],d=0;d<a;++d){var e=b[d].i(),f=this.resolve(e);if(f&&f!=this.j[e])try{b[d].Cb(f)}catch(g){}else c.push(b[d])}this.i=c.concat(b.slice(a))}};var Pc=class extends _.R{constructor(){var a=_.Oc;super();this.o=a;this.A=this.i=null;this.v=0;this.B={};this.j=!1;a=window.navigator.userAgent;a.indexOf("MSIE")>=0&&a.indexOf("Trident")>=0&&(a=/\b(?:MSIE|rv)[: ]([^\);]+)(\)|;)/.exec(a))&&a[1]&&parseFloat(a[1])<9&&(this.j=!0)}C(a,b){this.i=b;this.A=a;b.preventDefault?b.preventDefault():b.returnValue=!1}};_.Qc=class extends _.Q{constructor(a){super(a)}};var Rc=class extends _.Q{constructor(a){super(a)}};var Uc;_.Sc=function(a,b,c=98,d=new _.Kc){if(a.i){const e=new Jc;_.O(e,1,b.message);_.O(e,2,b.stack);_.N(e,3,b.lineNumber);_.P(e,5,1);_.H(d,40,e);a.i.log(c,d)}};Uc=class{constructor(){var a=Tc;this.i=null;_.K(a,4,!0)}log(a,b,c=new _.Kc){_.Sc(this,a,98,c)}};var Vc,Wc;Vc=function(a){if(a.o.length>0){var b=a.i!==void 0,c=a.j!==void 0;if(b||c){b=b?a.v:a.A;c=a.o;a.o=[];try{_.Wb(c,b,a)}catch(d){console.error(d)}}}};_.Xc=class{constructor(a){this.i=a;this.j=void 0;this.o=[]}then(a,b,c){this.o.push(new Wc(a,b,c));Vc(this)}resolve(a){if(this.i!==void 0||this.j!==void 0)throw Error("B");this.i=a;Vc(this)}reject(a){if(this.i!==void 0||this.j!==void 0)throw Error("B");this.j=a;Vc(this)}v(a){a.j&&a.j.call(a.i,this.i)}A(a){a.o&&a.o.call(a.i,this.j)}};
Wc=class{constructor(a,b,c){this.j=a;this.o=b;this.i=c}};_.Yc=a=>{var b="rc";if(a.rc&&a.hasOwnProperty(b))return a.rc;b=new a;return a.rc=b};_.Zc=class{constructor(){this.v=new _.Xc;this.i=new _.Xc;this.D=new _.Xc;this.B=new _.Xc;this.C=new _.Xc;this.A=new _.Xc;this.o=new _.Xc;this.j=new _.Xc;this.F=new _.Xc}K(){return this.v}M(){return this.i}N(){return this.D}L(){return this.B}Ea(){return this.C}ea(){return this.A}J(){return this.o}G(){return this.j}static i(){return _.Yc(_.Zc)}};var dd;_.ad=function(){return _.E(_.$c,Lc,1)};_.bd=function(){return _.E(_.$c,_.Mc,5)};dd=class extends _.Q{constructor(){super(cd)}};var cd;window.gbar_&&window.gbar_.CONFIG?cd=window.gbar_.CONFIG[0]||{}:cd=[];_.$c=new dd;var Tc=_.E(_.$c,Rc,3)||new Rc;_.ad()||new Lc;_.Oc=new Uc;_.A("gbar_._DumpException",function(a){_.Oc?_.Oc.log(a):console.error(a)});_.ed=new Pc;var gd;_.hd=function(a,b){var c=_.fd.i();if(a in c.i){if(c.i[a]!=b)throw new gd;}else{c.i[a]=b;const h=c.j[a];if(h)for(let k=0,l=h.length;k<l;k++){b=h[k];var d=c.i;delete b.i[a];if(_.yb(b.i)){for(var e=b.j.length,f=Array(e),g=0;g<e;g++)f[g]=d[b.j[g]];b.o.apply(b.v,f)}}delete c.j[a]}};_.fd=class{constructor(){this.i={};this.j={}}static i(){return _.Yc(_.fd)}};_.id=class extends _.aa{constructor(){super()}};gd=class extends _.id{};_.A("gbar.A",_.Xc);_.Xc.prototype.aa=_.Xc.prototype.then;_.A("gbar.B",_.Zc);_.Zc.prototype.ba=_.Zc.prototype.M;_.Zc.prototype.bb=_.Zc.prototype.N;_.Zc.prototype.bd=_.Zc.prototype.Ea;_.Zc.prototype.bf=_.Zc.prototype.K;_.Zc.prototype.bg=_.Zc.prototype.L;_.Zc.prototype.bh=_.Zc.prototype.ea;_.Zc.prototype.bj=_.Zc.prototype.J;_.Zc.prototype.bk=_.Zc.prototype.G;_.A("gbar.a",_.Zc.i());window.gbar&&window.gbar.ap&&window.gbar.ap(window.gbar.a);var jd=new Nc;_.hd("api",jd);
var kd=_.bd()||new _.Mc,ld=window,md=_.x(_.J(kd,8));ld.__PVT=md;_.hd("eq",_.ed);
}catch(e){_._DumpException(e)}
try{
_.nd=class extends _.Q{constructor(a){super(a)}};
}catch(e){_._DumpException(e)}
try{
var od=class extends _.Q{constructor(){super()}};var pd=class extends _.R{constructor(){super();this.j=[];this.i=[]}o(a,b){this.j.push({features:a,options:b})}init(a,b,c){window.gapi={};var d=window.___jsl={};d.h=_.x(_.J(a,1));_.I(a,12)!=null&&(d.dpo=_.w(_.K(a,12)));d.ms=_.x(_.J(a,2));d.m=_.x(_.J(a,3));d.l=[];_.L(b,1)&&(a=_.J(b,3))&&this.i.push(a);_.L(c,1)&&(c=_.J(c,2))&&this.i.push(c);_.A("gapi.load",(0,_.z)(this.o,this));return this}};var qd=_.E(_.$c,_.Qc,14);if(qd){var rd=_.E(_.$c,_.nd,9)||new _.nd,sd=new od,td=new pd;td.init(qd,rd,sd);_.hd("gs",td)};
}catch(e){_._DumpException(e)}
})(this.gbar_);
// Google Inc.
</script><script nonce="">try {const preferences = JSON.parse(window.localStorage.getItem("datalab_prefs_azhagesanragul@gmail.com")); document.querySelector('html') .setAttribute('theme', preferences['siteTheme'] || 'default');} catch (e) {}</script><script nonce="">window.performance.mark('head_start');</script><link rel="stylesheet" href="./rainfall_files/bundle.css"><script nonce="">var colabVersionTag = 'colab_20240718-060143_RC00_653501645'; var colabScsVersion = '6a7ab26c0d961ebf93bce28a15751b74'; var hl = 'en'; var colabExperiments = JSON.parse('\x7b\x22ai_unsubscribed_warning\x22: false, \x22aida_complete_code_model_id\x22: \x22\x22, \x22aida_do_conversation_model_id\x22: \x22\x22, \x22aida_generate_code_model_id\x22: \x22\x22, \x22aida_in_editor\x22: false, \x22allowed_public_url_domains\x22: \x5b\x22huggingface.co\x22, \x22dagshub.com\x22, \x22storage.googleapis.com\x22\x5d, \x22auto_execute_prereqs\x22: false, \x22backend_version\x22: \x22next\x22, \x22cell_tags\x22: false, \x22chat_model_id_override\x22: \x22\x22, \x22classified_generate\x22: false, \x22classroom_iframe_parent_origin\x22: \x22\x22, \x22client_text_compose\x22: true, \x22client_trim_completion_text\x22: 400, \x22cloud_origin\x22: \x22\x22, \x22commands_in_toolbar\x22: false, \x22comment_poll_long\x22: 900000, \x22comment_poll_short\x22: 60000, \x22compose_skip_suffix_check\x22: false, \x22converse_server_side_history\x22: false, \x22converse_temp\x22: \x22\x22, \x22crawler\x22: false, \x22critique_comments\x22: false, \x22dbu\x22: \x22\x22, \x22debug_external\x22: \x22external\x22, \x22debug_prod\x22: \x22prod\x22, \x22dep_cells_commands\x22: false, \x22dep_graph\x22: false, \x22development\x22: false, \x22document_change_poll_interval\x22: 30000, \x22drive_anon_api_key\x22: \x22AIzaSyB10s2vWUTwP0pj20wZoxmpZIt3rRodYeg\x22, \x22drive_api_key\x22: \x22AIzaSyCN_sSPJMpYrAzC5AtTrltNC8oRmLtoqBk\x22, \x22drive_background_save_project_number\x22: \x22948411933973\x22, \x22drive_realtime_project_number\x22: \x22\x22, \x22embedded_connection_poll\x22: false, \x22embedded_one_pending_connect_request\x22: false, \x22embedding_app\x22: \x22\x22, \x22enable_adhoc_backends\x22: false, \x22enable_dasher_subscription_ui\x22: true, \x22enable_more_reprs\x22: true, \x22explain_cell\x22: false, \x22explain_error\x22: true, \x22explain_error_model_id_override\x22: \x22\x22, \x22explain_error_prompt_next\x22: true, \x22explain_error_trim_traceback\x22: true, \x22explicit_ai_backend\x22: \x22\x22, \x22external_trusted_github_org_repos_quick_add\x22: \x22GoogleChrome\/CrUX,google\/generative-ai-docs\x22, \x22file_browser_poll_interval_millis\x22: 60000, \x22file_upload_rate_limit\x22: 5, \x22filter_repetitive_suggestions\x22: false, \x22first_party_auth\x22: true, \x22fix_imports\x22: false, \x22gemini_rebrand\x22: true, \x22generate_code\x22: true, \x22generate_df\x22: true, \x22generate_prompt_reduce_blank_responses\x22: true, \x22generate_prompt_reduce_name_errors\x22: false, \x22generate_temp\x22: \x22\x22, \x22get_started\x22: false, \x22gis_auth\x22: true, \x22github_client_id\x22: \x225036cf6d81e65aaa6340\x22, \x22gpu_utilization_check_interval_ms\x22: 600000, \x22granular_browser_permissions\x22: false, \x22hats_surveys\x22: true, \x22hide_fix_error_for_long_code\x22: true, \x22hrc\x22: false, \x22import_data\x22: false, \x22interactive_sheet_next_steps\x22: false, \x22internal_chat\x22: false, \x22internal_schedule\x22: false, \x22is_prober\x22: false, \x22jsraw\x22: \x22compiled\x22, \x22key_promoter\x22: false, \x22kr\x22: false, \x22local_cloud_apis\x22: false, \x22local_service_worker\x22: false, \x22log_preferences_on_change\x22: false, \x22lsp_diagnostics_reporting\x22: false, \x22lsp_inlay_hint\x22: false, \x22lsrp\x22: 0, \x22ml_enabled\x22: true, \x22mlpp\x22: false, \x22mlpp_multiline\x22: false, \x22mlpp_on_by_default\x22: true, \x22mobile\x22: false, \x22next_steps\x22: true, \x22nl2code_missing_imports\x22: true, \x22no_fun\x22: false, \x22notebook_context_length\x22: 10000, \x22outage_notification\x22: \x22\x22, \x22outage_notification_link\x22: \x22\x22, \x22output_menu\x22: true, \x22outputframe_version\x22: \x22\x22, \x22override_suf_params_for_test\x22: false, \x22prereq_cells_next_steps\x22: false, \x22recaptcha_polling_frequency_ms\x22: 300000, \x22recaptcha_v2_site_key\x22: \x226LfQttQUAAAAADuPanA_VZMaZgBAOnHZNuuqUewp\x22, \x22recaptcha_v3_site_key\x22: \x226LfQPtEUAAAAAHBpAdFng54jyuB1V5w5dofknpip\x22, \x22reconnect_max_delay_seconds\x22: 300, \x22reduce_chat_not_answering\x22: true, \x22require_ai_consent\x22: true, \x22resource_poll_interval_ms\x22: 10000, \x22rp_kxhr\x22: false, \x22rp_lsp\x22: true, \x22rp_serve_kernel_port\x22: false, \x22rp_term\x22: true, \x22rp_token_refresh_headroom_millis\x22: 300000, \x22rt\x22: false, \x22runtime_env_overrides\x22: \x22\\n          \x5b\\n            \x5b\\\x22ENABLE_DIRECTORYPREFETCHER\\\x22, \\\x221\\\x22\x5d\\n          \x5d\\n        \x22, \x22runtime_type_for_test\x22: \x22\x22, \x22server_execution_queue\x22: true, \x22session_resume_coalesce\x22: true, \x22show_payments_interstitial\x22: false, \x22show_relnotes_on_open\x22: true, \x22show_signup_survey\x22: true, \x22show_subscription_renewal_time\x22: false, \x22show_switch_to_prod_link\x22: false, \x22smartpaste\x22: false, \x22smartpaste_serving_config\x22: \x22pl_700m_smart_paste_3.0.25\x22, \x22sql_cell\x22: false, \x22sql_cell_buttons\x22: false, \x22storage_partition_trial\x22: true, \x22storage_partition_trial_token\x22: \x22AmUpB2+Hlwk73pYiEMbnkef\/dprJi1I9rClec33apyFsbVOaCIRN29Rk9M4ht5Otgbp+thCc3MMD73GyCNfEWAkAAAB3eyJvcmlnaW4iOiJodHRwczovL2NvbGFiLnJlc2VhcmNoLmdvb2dsZS5jb206NDQzIiwiZmVhdHVyZSI6IkRpc2FibGVUaGlyZFBhcnR5U3RvcmFnZVBhcnRpdGlvbmluZyIsImV4cGlyeSI6MTcyNTQwNzk5OX0\x3d\x22, \x22suspicious_code_matches\x22: \x22\x22, \x22suspicious_code_regexs\x22: \x22\x22, \x22term4all\x22: false, \x22text_compose_report_changes_millis\x22: 10000, \x22text_span_comments\x22: false, \x22tpu_node_deprecation_warning\x22: true, \x22tpu_node_redirect\x22: true, \x22tpu_node_selector_grayed_out\x22: true, \x22tpu_node_selector_visible\x22: false, \x22tpu_vm\x22: true, \x22unmanaged_vm_min_label_block\x22: \x22\x22, \x22unmanaged_vm_min_label_warn\x22: \x22\x22, \x22unmanaged_vm_min_release_tag_block\x22: \x22\x22, \x22unmanaged_vm_min_release_tag_warn\x22: \x22\x22, \x22use_corplogin\x22: true, \x22use_dm_sql_lsp\x22: false, \x22user_visible_gpu_types\x22: \x5b\x22T4\x22, \x22A100\x22, \x22L4\x22\x5d, \x22verbose_warnings\x22: false, \x22vertex_ai_api_environment_override\x22: \x22\x22, \x22waffle\x22: false, \x22workstations\x22: false, \x22ids\x22: \x5b20730159, 20730265, 20730268, 20730183, 20730185, 20730230, 20730177, 20730291, 20730129, 20730150, 20730250\x5d, \x22flag_ids\x22: \x7b\x22ai_unsubscribed_warning\x22: 45504730, \x22aida_complete_code_model_id\x22: 45427660, \x22aida_do_conversation_model_id\x22: 45427664, \x22aida_generate_code_model_id\x22: 45427663, \x22aida_in_editor\x22: 45425507, \x22allowed_public_url_domains\x22: 45425558, \x22auto_execute_prereqs\x22: 45624305, \x22backend_version\x22: 45425541, \x22cell_tags\x22: 45425779, \x22chat_model_id_override\x22: 45631876, \x22classified_generate\x22: 45425499, \x22classroom_iframe_parent_origin\x22: 45425537, \x22client_text_compose\x22: 45425512, \x22client_trim_completion_text\x22: 45425628, \x22cloud_origin\x22: 45425538, \x22commands_in_toolbar\x22: 45425502, \x22comment_poll_long\x22: 45425588, \x22comment_poll_short\x22: 45425587, \x22compose_skip_suffix_check\x22: 45615470, \x22converse_server_side_history\x22: 45634472, \x22converse_temp\x22: 45425509, \x22crawler\x22: 45425491, \x22critique_comments\x22: 45612076, \x22dbu\x22: 45425545, \x22debug_external\x22: 45425470, \x22debug_prod\x22: 45425471, \x22dep_cells_commands\x22: 45622249, \x22dep_graph\x22: 45629071, \x22development\x22: 45425544, \x22document_change_poll_interval\x22: 45425589, \x22drive_anon_api_key\x22: 45425478, \x22drive_api_key\x22: 45425473, \x22drive_background_save_project_number\x22: 45425479, \x22drive_realtime_project_number\x22: 45425629, \x22embedded_connection_poll\x22: 45491618, \x22embedded_one_pending_connect_request\x22: 45640470, \x22enable_adhoc_backends\x22: 45425506, \x22enable_dasher_subscription_ui\x22: 45639531, \x22enable_more_reprs\x22: 45613354, \x22explain_cell\x22: 45425505, \x22explain_error\x22: 45425487, \x22explain_error_model_id_override\x22: 45631875, \x22explain_error_prompt_next\x22: 45615229, \x22explain_error_trim_traceback\x22: 45618831, \x22explicit_ai_backend\x22: 45638548, \x22external_trusted_github_org_repos_quick_add\x22: 45425555, \x22file_browser_poll_interval_millis\x22: 45643722, \x22file_upload_rate_limit\x22: 45637799, \x22filter_repetitive_suggestions\x22: 45615781, \x22first_party_auth\x22: 45425560, \x22fix_imports\x22: 45624140, \x22gemini_rebrand\x22: 45631310, \x22generate_code\x22: 45425492, \x22generate_df\x22: 45425503, \x22generate_prompt_reduce_blank_responses\x22: 45643396, \x22generate_prompt_reduce_name_errors\x22: 45634392, \x22generate_temp\x22: 45425508, \x22get_started\x22: 45430267, \x22gis_auth\x22: 45425625, \x22github_client_id\x22: 45425556, \x22gpu_utilization_check_interval_ms\x22: 45425561, \x22granular_browser_permissions\x22: 45630936, \x22hats_surveys\x22: 45425559, \x22hide_fix_error_for_long_code\x22: 45638639, \x22import_data\x22: 45430411, \x22interactive_sheet_next_steps\x22: 45634324, \x22internal_chat\x22: 45622872, \x22internal_schedule\x22: 45425578, \x22is_prober\x22: 45429104, \x22jsraw\x22: 45425557, \x22key_promoter\x22: 45425570, \x22local_cloud_apis\x22: 45425630, \x22local_service_worker\x22: 45425550, \x22log_preferences_on_change\x22: 45643817, \x22lsp_diagnostics_reporting\x22: 45425604, \x22lsp_inlay_hint\x22: 45614695, \x22lsrp\x22: 45425612, \x22ml_enabled\x22: 45425493, \x22mlpp\x22: 45425608, \x22mlpp_multiline\x22: 45425623, \x22mlpp_on_by_default\x22: 45425609, \x22mobile\x22: 45425562, \x22next_steps\x22: 45428239, \x22nl2code_missing_imports\x22: 45615676, \x22no_fun\x22: 45425540, \x22notebook_context_length\x22: 45633457, \x22outage_notification\x22: 45425584, \x22outage_notification_link\x22: 45425585, \x22output_menu\x22: 45617054, \x22outputframe_version\x22: 45425591, \x22override_suf_params_for_test\x22: 45425592, \x22prereq_cells_next_steps\x22: 45640400, \x22recaptcha_polling_frequency_ms\x22: 45425582, \x22recaptcha_v2_site_key\x22: 45425581, \x22recaptcha_v3_site_key\x22: 45425580, \x22reconnect_max_delay_seconds\x22: 45425539, \x22reduce_chat_not_answering\x22: 45640977, \x22require_ai_consent\x22: 45425489, \x22resource_poll_interval_ms\x22: 45425590, \x22rp_kxhr\x22: 45491686, \x22rp_lsp\x22: 45462965, \x22rp_serve_kernel_port\x22: 45572083, \x22rp_term\x22: 45426219, \x22rp_token_refresh_headroom_millis\x22: 45517773, \x22rt\x22: 45425624, \x22runtime_env_overrides\x22: 45425583, \x22runtime_type_for_test\x22: 45425586, \x22server_execution_queue\x22: 45425600, \x22session_resume_coalesce\x22: 45425603, \x22show_payments_interstitial\x22: 45425543, \x22show_relnotes_on_open\x22: 45428128, \x22show_signup_survey\x22: 45425620, \x22show_subscription_renewal_time\x22: 45425569, \x22show_switch_to_prod_link\x22: 45425483, \x22smartpaste\x22: 45627425, \x22smartpaste_serving_config\x22: 45630585, \x22sql_cell\x22: 45425497, \x22sql_cell_buttons\x22: 45425498, \x22suspicious_code_matches\x22: 45425615, \x22suspicious_code_regexs\x22: 45425616, \x22term4all\x22: 45425542, \x22text_compose_report_changes_millis\x22: 45425568, \x22text_span_comments\x22: 45545873, \x22tpu_node_deprecation_warning\x22: 45630619, \x22tpu_node_redirect\x22: 45634372, \x22tpu_node_selector_grayed_out\x22: 45630664, \x22tpu_node_selector_visible\x22: 45630663, \x22tpu_vm\x22: 45614812, \x22unmanaged_vm_min_label_block\x22: 45425546, \x22unmanaged_vm_min_label_warn\x22: 45425547, \x22unmanaged_vm_min_release_tag_block\x22: 45425548, \x22unmanaged_vm_min_release_tag_warn\x22: 45425549, \x22use_corplogin\x22: 45425606, \x22use_dm_sql_lsp\x22: 45425610, \x22user_visible_gpu_types\x22: 45620529, \x22verbose_warnings\x22: 45425551, \x22vertex_ai_api_environment_override\x22: 45612077, \x22waffle\x22: 45446491, \x22workstations\x22: 45425626\x7d\x7d'); var colabUserEmail = 'azhagesanragul@gmail.com'; var colabRenderDataToken = 'AFWLbD2PrIS7D4EmEfBo9s1fDmqPf2IAnTWuq6f8dYhH0cu4Bm_GVQRKLQSsqeqnkHJZsDpgNQAXjdrRRL5HEhex3tXp8_rL942p'; var colabConfig = '\x5b\x5b\x22azhagesanragul@gmail.com\x22,\x5b1,\x22AHXL0D3DaRyBD7SwwBam83ha4qgtlORhToZ0c98wJY5fii++AroVkI+u4WcVbuh6jfAeoE5rGYUDtB2DcqYaEo0ef6wjSt43kwDcYtoMc2++1Vic8+O4BomqJ1xnvLPcqTzTqZ6ln6FQNrr1\/UfrSzlKU0Qr3TIt7DKMZPRlS3xtu9X1cnnndh4TEW2ofCR\/tc44O\/e6IFTfilsDn1mhEDnoolWr88J7Vd1kqsclDPzzPH+n\/k5FxXPdanD52N4dSGwXOJuncLvXomDRob41oUTpMfhESg35lapx4Dg7tP61J1WVwKyUxfe160frHqzAaSgCAiYpG0bB7WVsh7Mhc+uKgrdMOVTqcSBvtremgeu+nvuv8Y1X6mDnurSTaT5rOjOzmKoCxkdbkAL6M+vip3jTQ8QCtF0idGVw0QnDHrirdHHHyEySNRtC0l5iStyuoO+5zUTpSO+cEyzBicCVVQJt+xaVebT1Zk5J1onFcQdS\/uCbV+JIxtukADZIoNvTHWT12GCLvR\/VXXkA7cOsJAfUiGe9HPcwPDU4cP3X7f0QROTLGsqg\/MKP3Cpj5WW1PN9VX4aNXpDRlgsrczLvxVonbnM3RQ09SXiqw5AYtkQCYOXKIC0CN3JzSzuch1pmU04gXqqviMHqLpuJdrZWFtGjbiLbX9ZqP8RrwS2Jx46Kx27JVVWeItvWWdGhTlFk74zV633xR5PZ2OxBeSzz6WMbMQqHcycwwD6EdLtP6jPSQGyo\/HxGToIQAjfAuwNRyMdFbnmI\/cbEidLZMgR1oP2lQbvZQJloq\/24Ac8p4LtucYa4Y1AqUVJbJxwY2KW6hunsf8NeR1cNuuNA6gA7lZKOYamE8cNJC72OEnYpdqx0YaUdFydxHcGinRP+3mdztby3ficFF6nrO1tARxpJUj6GXuOsN3z2TEMnQSXYV7WUOhQ8PS55xvjyFS+1bybBDsR8CphAEvxhXzwcsoPB5Y+TyItLp+a\/jXZa2bCVRUygHFHu0gl6lmXxLM7LQLw9qnPomW+ouedJMmzbXkmaV5cZduW+CGTqoeGgv8HrmGj40R8yjteyMkbI3Nc9m5DS\/pc+UDsE4n7KKrzkcEXO0yX+zZpAhSEOAp8uyET0ktJDU8Sbel+mvEtQp+peMVKLIkWRyuM1p+pPjA9V+qiZIrdQUnOJ9kSdRY1ZhoTA3lWeCz\/2ZMSY71mLp7SfxukjrVao5QVUZeC7zKBRY14f3o+FVzarNCJyl3JJT3uKEp\/gEVJVp9GHAGMOUI2TV3dnqsa+vQSUoQjHOiELdKvRF23LOdUECfzkswVrcnx9VZVvO\/O\/Bn60RvFsy2SA4XrkGhm6zSpyasrvM2VUByq+I1QDZBXlrJsgraKMK8kly0\/nCFJkFmGoClokVGKf+b++jA08Xj3Kv\/P3wwXCCc8Jm6atuQkhcp0B9t8m5w4x4cnT6Q7DkpKRHGHqx1u6Lo5XqexARYJIKm2mbcBA\/I435UwarDqB8eVKUwqJFoOSWZjhizmkKGrFzAs46KaBBBKbOCF9D\/nvC2S1q5cifEyNAHOgdDAfZ0FfCmaICJ7yZe+zPYCVtXYulumKGZrQCsyVobL\/cZ4ArKLb59XS2HlL1\/Hico+ybV7E3L9MOGEhpyAUAX7zHVw3GUXxG\/mMnuQiIlxDKPupxWbtThUZgGnuoivELIKBwt52dcm6Zoo5DV44vR+VhmlTcRaCn8xLflR3+pvsqttj31DB07ImCOb52ccRODCBDElceG4Glao06atulro+0GT49LJ+Bl1qj3v5xQEM33dNkJI0mR8OdYAAVRPHHCUbAdJ5hy4yt2+uByShYqro6FaQbWxsSUjCcyn+r0NcDGpNzN4KIYb5TNAPAP4a8LSXNaS93vqIk+66r45hb558wwLYTzw\x3d\x22,\x22AJ9oCCyWUY4o1jCnxekBSaT4xVbvzU\/aKFJU\/WSR5Cu2EPVn8ZwI4AbWgMl16YwFGa3H01xRzmoaRy8kxZFDRtfTJoj3NQsfOczT3U5XPaBXmuO1bAEbCPHZ00nWnlQLaDQLHEHUbRkz\x22,\x22https:\/\/payments.google.com\/payments\x22,0,0,null,null,null,\x22$11.79\x22,\x22$58.99\x22,\x22$11.79\x22,\x22$58.99\x22\x5d,\x5b1,4,5\x5d,\x22IN\x22,0\x5d\x5d';</script><link id="favicon-link" rel="shortcut icon" href="https://ssl.gstatic.com/colaboratory-static/common/6a7ab26c0d961ebf93bce28a15751b74/img/favicon.ico"><meta name="google-site-verification" content="wRgpUU3mIRZPD1GORBPNonaotM72092B_DsqQFWNa4s"><meta name="google-site-verification" content="f5qdvL6RAXlBgHezvCLpPtvx2wU5ZgIzzPULroprlnA"><meta name="google-site-verification" content="-wL8iYJTC7X0zF9qBNDQUAd-P1ZkQUK-OhSgv4Wkf1M"><meta name="google-site-verification" content="o-EECwEDQeUpZv0jTmoGfCDX7dUI8Kul4ESepXmDnO0"><meta name="google-site-verification" content="sNOroO9gXrazN-oMODOm0Bs0_vw1R5QwZ-BfrSHn8Io"><meta name="google-site-verification" content="K1UdZBHJXQYnJGXIK1KuutmVy6dn3vG2sEyV9D1C6dM"><meta name="google-site-verification" content="wdGthzzfu0IjM3qpFqTuQL9poAQZAvAaFKyuzetLpIM"><meta name="google-site-verification" content="qZJ77guHGO0TObHUBRYVdXQlIhXBBuz8dahJVmIlzCo"><meta name="google-site-verification" content="7ahoeOOKT2ZR781GZ5xK4L9t7yO1ZOHc-gaoUALEYgw"><meta name="google-site-verification" content="PHgaSKwdxZELS21aixtLhfpvaHtKen9pnVJ25EI35Zs"><meta name="google-site-verification" content="Ozey1ptWUQW13_lCEhpPMOcmRBLqdyB3WEL-TJUjskU"><meta name="google-site-verification" content="rF5iXzWe9KZXJes1dQNhOUkS4_z_e97IrsVoCx2trek"><meta name="google-site-verification" content="z-WR3zzv8XZ5FFfBLLDbyTiN35UXm01nWUS2Uej5pwg"><meta name="google-site-verification" content="cpB5oulaGwqSxsg4E-9q2MVbK87iE9NAUUVxdveucPw"><meta name="google-site-verification" content="8P-D5fVWgUIhw8X2BxnKJbf5itK0zxX0QhoBjbJFTe8"><meta name="google-site-verification" content="88fgsZDoVRBuRnDPMIEjcHCxsEXzODOqEsJoqtvQsDc"><meta name="google-site-verification" content="sMarhZgb4va_L_7UTdMR43gDZ2gVqc_5GHN4REpQPGY"><meta name="google-site-verification" content="26aKGBCw3XblB5Ou01UhxY5WDtMqHjoTm6P-lvF6AqE"><meta name="google-site-verification" content="DGionF7db9g0dOgeBXwOAN2tmCzWBdo5yOdc_-5UcuE"><meta name="google-site-verification" content="Q9LlidR0toR7UtSyVO23xNeaqJmRp8I6r4ghBQTtntU"><meta name="google-site-verification" content="rQawcZaTEK_UrDG30cz_7nVKOVvBass61QEes0Tm04g"><meta name="google-site-verification" content="8L3ghjzKIj241AYAmEygniTe604tsXFkIrb1v-DBtGo"><meta name="google-site-verification" content="Osw7QcOK045GmOYJI2MM2_7AaL-s4q6pdn8gIv6JNxA"><meta name="google-site-verification" content="KiunYPvrY5x8umvAWcjhwPrB677xCar2LeT_8yaVrDg"><meta name="google-site-verification" content="b6bOMRzMVX2bJABYDGBPtpGcB_AUZ-o2SOTggQXErkg"><meta name="google-site-verification" content="v2MQvJk6wTiBarKTbe1mdivqYCVtw-5m6w0HDzV5X_4"><meta name="google-site-verification" content="-N1hdkiHJQ6kwJALkHVh2ZzV2fFNER0schZl2AU6zvc"><meta property="og:type" content="article"><meta property="og:image" content="https://colab.research.google.com/img/colab_favicon_256px.png"><meta property="og:title" content="Google Colab"><meta http-equiv="origin-trial" content="AmUpB2+Hlwk73pYiEMbnkef/dprJi1I9rClec33apyFsbVOaCIRN29Rk9M4ht5Otgbp+thCc3MMD73GyCNfEWAkAAAB3eyJvcmlnaW4iOiJodHRwczovL2NvbGFiLnJlc2VhcmNoLmdvb2dsZS5jb206NDQzIiwiZmVhdHVyZSI6IkRpc2FibGVUaGlyZFBhcnR5U3RvcmFnZVBhcnRpdGlvbmluZyIsImV4cGlyeSI6MTcyNTQwNzk5OX0="><script nonce="">window.performance.mark('head_end'); window.performance.measure('head', 'head_start', 'head_end');</script><script async="" src="./rainfall_files/lazy.min.js.download" nonce=""></script><style id="inert-style">
[inert] {
  pointer-events: none;
  cursor: default;
}

[inert], [inert] * {
  user-select: none;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
}
</style><script async="async" type="text/javascript" src="./rainfall_files/editor.main.js.download"></script><script async="" type="text/javascript" charset="UTF-8" src="./rainfall_files/rs=AA2YrTtTSQ_F1fFA043-VJ0kUaOQJ3WUvA" nonce=""></script><link type="text/css" href="./rainfall_files/rs=AA2YrTtcIX-HnDSsLAqIZhJE-F41GqQWkA" rel="stylesheet"><link rel="stylesheet" type="text/css" data-name="vs/editor/editor.main" href="./rainfall_files/editor.main.css"><script async="async" type="text/javascript" src="./rainfall_files/editor.main.nls.js.download"></script><style type="text/css">.MathJax_Hover_Frame {border-radius: .25em; -webkit-border-radius: .25em; -moz-border-radius: .25em; -khtml-border-radius: .25em; box-shadow: 0px 0px 15px #83A; -webkit-box-shadow: 0px 0px 15px #83A; -moz-box-shadow: 0px 0px 15px #83A; -khtml-box-shadow: 0px 0px 15px #83A; border: 1px solid #A6D ! important; display: inline-block; position: absolute}
.MathJax_Menu_Button .MathJax_Hover_Arrow {position: absolute; cursor: pointer; display: inline-block; border: 2px solid #AAA; border-radius: 4px; -webkit-border-radius: 4px; -moz-border-radius: 4px; -khtml-border-radius: 4px; font-family: 'Courier New',Courier; font-size: 9px; color: #F0F0F0}
.MathJax_Menu_Button .MathJax_Hover_Arrow span {display: block; background-color: #AAA; border: 1px solid; border-radius: 3px; line-height: 0; padding: 4px}
.MathJax_Hover_Arrow:hover {color: white!important; border: 2px solid #CCC!important}
.MathJax_Hover_Arrow:hover span {background-color: #CCC!important}
</style><style type="text/css">#MathJax_About {position: fixed; left: 50%; width: auto; text-align: center; border: 3px outset; padding: 1em 2em; background-color: #DDDDDD; color: black; cursor: default; font-family: message-box; font-size: 120%; font-style: normal; text-indent: 0; text-transform: none; line-height: normal; letter-spacing: normal; word-spacing: normal; word-wrap: normal; white-space: nowrap; float: none; z-index: 201; border-radius: 15px; -webkit-border-radius: 15px; -moz-border-radius: 15px; -khtml-border-radius: 15px; box-shadow: 0px 10px 20px #808080; -webkit-box-shadow: 0px 10px 20px #808080; -moz-box-shadow: 0px 10px 20px #808080; -khtml-box-shadow: 0px 10px 20px #808080; filter: progid:DXImageTransform.Microsoft.dropshadow(OffX=2, OffY=2, Color='gray', Positive='true')}
#MathJax_About.MathJax_MousePost {outline: none}
.MathJax_Menu {position: absolute; background-color: white; color: black; width: auto; padding: 2px; border: 1px solid #CCCCCC; margin: 0; cursor: default; font: menu; text-align: left; text-indent: 0; text-transform: none; line-height: normal; letter-spacing: normal; word-spacing: normal; word-wrap: normal; white-space: nowrap; float: none; z-index: 201; box-shadow: 0px 10px 20px #808080; -webkit-box-shadow: 0px 10px 20px #808080; -moz-box-shadow: 0px 10px 20px #808080; -khtml-box-shadow: 0px 10px 20px #808080; filter: progid:DXImageTransform.Microsoft.dropshadow(OffX=2, OffY=2, Color='gray', Positive='true')}
.MathJax_MenuItem {padding: 2px 2em; background: transparent}
.MathJax_MenuArrow {position: absolute; right: .5em; padding-top: .25em; color: #666666; font-size: .75em}
.MathJax_MenuActive .MathJax_MenuArrow {color: white}
.MathJax_MenuArrow.RTL {left: .5em; right: auto}
.MathJax_MenuCheck {position: absolute; left: .7em}
.MathJax_MenuCheck.RTL {right: .7em; left: auto}
.MathJax_MenuRadioCheck {position: absolute; left: 1em}
.MathJax_MenuRadioCheck.RTL {right: 1em; left: auto}
.MathJax_MenuLabel {padding: 2px 2em 4px 1.33em; font-style: italic}
.MathJax_MenuRule {border-top: 1px solid #CCCCCC; margin: 4px 1px 0px}
.MathJax_MenuDisabled {color: GrayText}
.MathJax_MenuActive {background-color: Highlight; color: HighlightText}
.MathJax_MenuDisabled:focus, .MathJax_MenuLabel:focus {background-color: #E8E8E8}
.MathJax_ContextMenu:focus {outline: none}
.MathJax_ContextMenu .MathJax_MenuItem:focus {outline: none}
#MathJax_AboutClose {top: .2em; right: .2em}
.MathJax_Menu .MathJax_MenuClose {top: -10px; left: -10px}
.MathJax_MenuClose {position: absolute; cursor: pointer; display: inline-block; border: 2px solid #AAA; border-radius: 18px; -webkit-border-radius: 18px; -moz-border-radius: 18px; -khtml-border-radius: 18px; font-family: 'Courier New',Courier; font-size: 24px; color: #F0F0F0}
.MathJax_MenuClose span {display: block; background-color: #AAA; border: 1.5px solid; border-radius: 18px; -webkit-border-radius: 18px; -moz-border-radius: 18px; -khtml-border-radius: 18px; line-height: 0; padding: 8px 0 6px}
.MathJax_MenuClose:hover {color: white!important; border: 2px solid #CCC!important}
.MathJax_MenuClose:hover span {background-color: #CCC!important}
.MathJax_MenuClose:hover:focus {outline: none}
</style><style type="text/css">.MJX_Assistive_MathML {position: absolute!important; top: 0; left: 0; clip: rect(1px, 1px, 1px, 1px); padding: 1px 0 0 0!important; border: 0!important; height: 1px!important; width: 1px!important; overflow: hidden!important; display: block!important; -webkit-touch-callout: none; -webkit-user-select: none; -khtml-user-select: none; -moz-user-select: none; -ms-user-select: none; user-select: none}
.MJX_Assistive_MathML.MJX_Assistive_MathML_Block {width: 100%!important}
</style><style type="text/css">#MathJax_Zoom {position: absolute; background-color: #F0F0F0; overflow: auto; display: block; z-index: 301; padding: .5em; border: 1px solid black; margin: 0; font-weight: normal; font-style: normal; text-align: left; text-indent: 0; text-transform: none; line-height: normal; letter-spacing: normal; word-spacing: normal; word-wrap: normal; white-space: nowrap; float: none; -webkit-box-sizing: content-box; -moz-box-sizing: content-box; box-sizing: content-box; box-shadow: 5px 5px 15px #AAAAAA; -webkit-box-shadow: 5px 5px 15px #AAAAAA; -moz-box-shadow: 5px 5px 15px #AAAAAA; -khtml-box-shadow: 5px 5px 15px #AAAAAA; filter: progid:DXImageTransform.Microsoft.dropshadow(OffX=2, OffY=2, Color='gray', Positive='true')}
#MathJax_ZoomOverlay {position: absolute; left: 0; top: 0; z-index: 300; display: inline-block; width: 100%; height: 100%; border: 0; padding: 0; margin: 0; background-color: white; opacity: 0; filter: alpha(opacity=0)}
#MathJax_ZoomFrame {position: relative; display: inline-block; height: 0; width: 0}
#MathJax_ZoomEventTrap {position: absolute; left: 0; top: 0; z-index: 302; display: inline-block; border: 0; padding: 0; margin: 0; background-color: white; opacity: 0; filter: alpha(opacity=0)}
</style><style type="text/css">.MathJax_Preview {color: #888}
#MathJax_Message {position: fixed; left: 1em; bottom: 1.5em; background-color: #E6E6E6; border: 1px solid #959595; margin: 0px; padding: 2px 8px; z-index: 102; color: black; font-size: 80%; width: auto; white-space: nowrap}
#MathJax_MSIE_Frame {position: absolute; top: 0; left: 0; width: 0px; z-index: 101; border: 0px; margin: 0px; padding: 0px}
.MathJax_Error {color: #CC0000; font-style: italic}
</style><style type="text/css">.MJXp-script {font-size: .8em}
.MJXp-right {-webkit-transform-origin: right; -moz-transform-origin: right; -ms-transform-origin: right; -o-transform-origin: right; transform-origin: right}
.MJXp-bold {font-weight: bold}
.MJXp-italic {font-style: italic}
.MJXp-scr {font-family: MathJax_Script,'Times New Roman',Times,STIXGeneral,serif}
.MJXp-frak {font-family: MathJax_Fraktur,'Times New Roman',Times,STIXGeneral,serif}
.MJXp-sf {font-family: MathJax_SansSerif,'Times New Roman',Times,STIXGeneral,serif}
.MJXp-cal {font-family: MathJax_Caligraphic,'Times New Roman',Times,STIXGeneral,serif}
.MJXp-mono {font-family: MathJax_Typewriter,'Times New Roman',Times,STIXGeneral,serif}
.MJXp-largeop {font-size: 150%}
.MJXp-largeop.MJXp-int {vertical-align: -.2em}
.MJXp-math {display: inline-block; line-height: 1.2; text-indent: 0; font-family: 'Times New Roman',Times,STIXGeneral,serif; white-space: nowrap; border-collapse: collapse}
.MJXp-display {display: block; text-align: center; margin: 1em 0}
.MJXp-math span {display: inline-block}
.MJXp-box {display: block!important; text-align: center}
.MJXp-box:after {content: " "}
.MJXp-rule {display: block!important; margin-top: .1em}
.MJXp-char {display: block!important}
.MJXp-mo {margin: 0 .15em}
.MJXp-mfrac {margin: 0 .125em; vertical-align: .25em}
.MJXp-denom {display: inline-table!important; width: 100%}
.MJXp-denom > * {display: table-row!important}
.MJXp-surd {vertical-align: top}
.MJXp-surd > * {display: block!important}
.MJXp-script-box > *  {display: table!important; height: 50%}
.MJXp-script-box > * > * {display: table-cell!important; vertical-align: top}
.MJXp-script-box > *:last-child > * {vertical-align: bottom}
.MJXp-script-box > * > * > * {display: block!important}
.MJXp-mphantom {visibility: hidden}
.MJXp-munderover, .MJXp-munder {display: inline-table!important}
.MJXp-over {display: inline-block!important; text-align: center}
.MJXp-over > * {display: block!important}
.MJXp-munderover > *, .MJXp-munder > * {display: table-row!important}
.MJXp-mtable {vertical-align: .25em; margin: 0 .125em}
.MJXp-mtable > * {display: inline-table!important; vertical-align: middle}
.MJXp-mtr {display: table-row!important}
.MJXp-mtd {display: table-cell!important; text-align: center; padding: .5em 0 0 .5em}
.MJXp-mtr > .MJXp-mtd:first-child {padding-left: 0}
.MJXp-mtr:first-child > .MJXp-mtd {padding-top: 0}
.MJXp-mlabeledtr {display: table-row!important}
.MJXp-mlabeledtr > .MJXp-mtd:first-child {padding-left: 0}
.MJXp-mlabeledtr:first-child > .MJXp-mtd {padding-top: 0}
.MJXp-merror {background-color: #FFFF88; color: #CC0000; border: 1px solid #CC0000; padding: 1px 3px; font-style: normal; font-size: 90%}
.MJXp-scale0 {-webkit-transform: scaleX(.0); -moz-transform: scaleX(.0); -ms-transform: scaleX(.0); -o-transform: scaleX(.0); transform: scaleX(.0)}
.MJXp-scale1 {-webkit-transform: scaleX(.1); -moz-transform: scaleX(.1); -ms-transform: scaleX(.1); -o-transform: scaleX(.1); transform: scaleX(.1)}
.MJXp-scale2 {-webkit-transform: scaleX(.2); -moz-transform: scaleX(.2); -ms-transform: scaleX(.2); -o-transform: scaleX(.2); transform: scaleX(.2)}
.MJXp-scale3 {-webkit-transform: scaleX(.3); -moz-transform: scaleX(.3); -ms-transform: scaleX(.3); -o-transform: scaleX(.3); transform: scaleX(.3)}
.MJXp-scale4 {-webkit-transform: scaleX(.4); -moz-transform: scaleX(.4); -ms-transform: scaleX(.4); -o-transform: scaleX(.4); transform: scaleX(.4)}
.MJXp-scale5 {-webkit-transform: scaleX(.5); -moz-transform: scaleX(.5); -ms-transform: scaleX(.5); -o-transform: scaleX(.5); transform: scaleX(.5)}
.MJXp-scale6 {-webkit-transform: scaleX(.6); -moz-transform: scaleX(.6); -ms-transform: scaleX(.6); -o-transform: scaleX(.6); transform: scaleX(.6)}
.MJXp-scale7 {-webkit-transform: scaleX(.7); -moz-transform: scaleX(.7); -ms-transform: scaleX(.7); -o-transform: scaleX(.7); transform: scaleX(.7)}
.MJXp-scale8 {-webkit-transform: scaleX(.8); -moz-transform: scaleX(.8); -ms-transform: scaleX(.8); -o-transform: scaleX(.8); transform: scaleX(.8)}
.MJXp-scale9 {-webkit-transform: scaleX(.9); -moz-transform: scaleX(.9); -ms-transform: scaleX(.9); -o-transform: scaleX(.9); transform: scaleX(.9)}
.MathJax_PHTML .noError {vertical-align: ; font-size: 90%; text-align: left; color: black; padding: 1px 3px; border: 1px solid}
</style><script async="async" type="text/javascript" src="./rainfall_files/markdown.js.download"></script><script src="./rainfall_files/api.js.download" nonce=""></script><script src="./rainfall_files/api(1).js.download" nonce=""></script><style type="text/css" media="screen" class="monaco-colors">.codicon-add:before { content: '\ea60'; }
.codicon-plus:before { content: '\ea60'; }
.codicon-gist-new:before { content: '\ea60'; }
.codicon-repo-create:before { content: '\ea60'; }
.codicon-lightbulb:before { content: '\ea61'; }
.codicon-light-bulb:before { content: '\ea61'; }
.codicon-repo:before { content: '\ea62'; }
.codicon-repo-delete:before { content: '\ea62'; }
.codicon-gist-fork:before { content: '\ea63'; }
.codicon-repo-forked:before { content: '\ea63'; }
.codicon-git-pull-request:before { content: '\ea64'; }
.codicon-git-pull-request-abandoned:before { content: '\ea64'; }
.codicon-record-keys:before { content: '\ea65'; }
.codicon-keyboard:before { content: '\ea65'; }
.codicon-tag:before { content: '\ea66'; }
.codicon-tag-add:before { content: '\ea66'; }
.codicon-tag-remove:before { content: '\ea66'; }
.codicon-person:before { content: '\ea67'; }
.codicon-person-follow:before { content: '\ea67'; }
.codicon-person-outline:before { content: '\ea67'; }
.codicon-person-filled:before { content: '\ea67'; }
.codicon-git-branch:before { content: '\ea68'; }
.codicon-git-branch-create:before { content: '\ea68'; }
.codicon-git-branch-delete:before { content: '\ea68'; }
.codicon-source-control:before { content: '\ea68'; }
.codicon-mirror:before { content: '\ea69'; }
.codicon-mirror-public:before { content: '\ea69'; }
.codicon-star:before { content: '\ea6a'; }
.codicon-star-add:before { content: '\ea6a'; }
.codicon-star-delete:before { content: '\ea6a'; }
.codicon-star-empty:before { content: '\ea6a'; }
.codicon-comment:before { content: '\ea6b'; }
.codicon-comment-add:before { content: '\ea6b'; }
.codicon-alert:before { content: '\ea6c'; }
.codicon-warning:before { content: '\ea6c'; }
.codicon-search:before { content: '\ea6d'; }
.codicon-search-save:before { content: '\ea6d'; }
.codicon-log-out:before { content: '\ea6e'; }
.codicon-sign-out:before { content: '\ea6e'; }
.codicon-log-in:before { content: '\ea6f'; }
.codicon-sign-in:before { content: '\ea6f'; }
.codicon-eye:before { content: '\ea70'; }
.codicon-eye-unwatch:before { content: '\ea70'; }
.codicon-eye-watch:before { content: '\ea70'; }
.codicon-circle-filled:before { content: '\ea71'; }
.codicon-primitive-dot:before { content: '\ea71'; }
.codicon-close-dirty:before { content: '\ea71'; }
.codicon-debug-breakpoint:before { content: '\ea71'; }
.codicon-debug-breakpoint-disabled:before { content: '\ea71'; }
.codicon-debug-hint:before { content: '\ea71'; }
.codicon-primitive-square:before { content: '\ea72'; }
.codicon-edit:before { content: '\ea73'; }
.codicon-pencil:before { content: '\ea73'; }
.codicon-info:before { content: '\ea74'; }
.codicon-issue-opened:before { content: '\ea74'; }
.codicon-gist-private:before { content: '\ea75'; }
.codicon-git-fork-private:before { content: '\ea75'; }
.codicon-lock:before { content: '\ea75'; }
.codicon-mirror-private:before { content: '\ea75'; }
.codicon-close:before { content: '\ea76'; }
.codicon-remove-close:before { content: '\ea76'; }
.codicon-x:before { content: '\ea76'; }
.codicon-repo-sync:before { content: '\ea77'; }
.codicon-sync:before { content: '\ea77'; }
.codicon-clone:before { content: '\ea78'; }
.codicon-desktop-download:before { content: '\ea78'; }
.codicon-beaker:before { content: '\ea79'; }
.codicon-microscope:before { content: '\ea79'; }
.codicon-vm:before { content: '\ea7a'; }
.codicon-device-desktop:before { content: '\ea7a'; }
.codicon-file:before { content: '\ea7b'; }
.codicon-file-text:before { content: '\ea7b'; }
.codicon-more:before { content: '\ea7c'; }
.codicon-ellipsis:before { content: '\ea7c'; }
.codicon-kebab-horizontal:before { content: '\ea7c'; }
.codicon-mail-reply:before { content: '\ea7d'; }
.codicon-reply:before { content: '\ea7d'; }
.codicon-organization:before { content: '\ea7e'; }
.codicon-organization-filled:before { content: '\ea7e'; }
.codicon-organization-outline:before { content: '\ea7e'; }
.codicon-new-file:before { content: '\ea7f'; }
.codicon-file-add:before { content: '\ea7f'; }
.codicon-new-folder:before { content: '\ea80'; }
.codicon-file-directory-create:before { content: '\ea80'; }
.codicon-trash:before { content: '\ea81'; }
.codicon-trashcan:before { content: '\ea81'; }
.codicon-history:before { content: '\ea82'; }
.codicon-clock:before { content: '\ea82'; }
.codicon-folder:before { content: '\ea83'; }
.codicon-file-directory:before { content: '\ea83'; }
.codicon-symbol-folder:before { content: '\ea83'; }
.codicon-logo-github:before { content: '\ea84'; }
.codicon-mark-github:before { content: '\ea84'; }
.codicon-github:before { content: '\ea84'; }
.codicon-terminal:before { content: '\ea85'; }
.codicon-console:before { content: '\ea85'; }
.codicon-repl:before { content: '\ea85'; }
.codicon-zap:before { content: '\ea86'; }
.codicon-symbol-event:before { content: '\ea86'; }
.codicon-error:before { content: '\ea87'; }
.codicon-stop:before { content: '\ea87'; }
.codicon-variable:before { content: '\ea88'; }
.codicon-symbol-variable:before { content: '\ea88'; }
.codicon-array:before { content: '\ea8a'; }
.codicon-symbol-array:before { content: '\ea8a'; }
.codicon-symbol-module:before { content: '\ea8b'; }
.codicon-symbol-package:before { content: '\ea8b'; }
.codicon-symbol-namespace:before { content: '\ea8b'; }
.codicon-symbol-object:before { content: '\ea8b'; }
.codicon-symbol-method:before { content: '\ea8c'; }
.codicon-symbol-function:before { content: '\ea8c'; }
.codicon-symbol-constructor:before { content: '\ea8c'; }
.codicon-symbol-boolean:before { content: '\ea8f'; }
.codicon-symbol-null:before { content: '\ea8f'; }
.codicon-symbol-numeric:before { content: '\ea90'; }
.codicon-symbol-number:before { content: '\ea90'; }
.codicon-symbol-structure:before { content: '\ea91'; }
.codicon-symbol-struct:before { content: '\ea91'; }
.codicon-symbol-parameter:before { content: '\ea92'; }
.codicon-symbol-type-parameter:before { content: '\ea92'; }
.codicon-symbol-key:before { content: '\ea93'; }
.codicon-symbol-text:before { content: '\ea93'; }
.codicon-symbol-reference:before { content: '\ea94'; }
.codicon-go-to-file:before { content: '\ea94'; }
.codicon-symbol-enum:before { content: '\ea95'; }
.codicon-symbol-value:before { content: '\ea95'; }
.codicon-symbol-ruler:before { content: '\ea96'; }
.codicon-symbol-unit:before { content: '\ea96'; }
.codicon-activate-breakpoints:before { content: '\ea97'; }
.codicon-archive:before { content: '\ea98'; }
.codicon-arrow-both:before { content: '\ea99'; }
.codicon-arrow-down:before { content: '\ea9a'; }
.codicon-arrow-left:before { content: '\ea9b'; }
.codicon-arrow-right:before { content: '\ea9c'; }
.codicon-arrow-small-down:before { content: '\ea9d'; }
.codicon-arrow-small-left:before { content: '\ea9e'; }
.codicon-arrow-small-right:before { content: '\ea9f'; }
.codicon-arrow-small-up:before { content: '\eaa0'; }
.codicon-arrow-up:before { content: '\eaa1'; }
.codicon-bell:before { content: '\eaa2'; }
.codicon-bold:before { content: '\eaa3'; }
.codicon-book:before { content: '\eaa4'; }
.codicon-bookmark:before { content: '\eaa5'; }
.codicon-debug-breakpoint-conditional-unverified:before { content: '\eaa6'; }
.codicon-debug-breakpoint-conditional:before { content: '\eaa7'; }
.codicon-debug-breakpoint-conditional-disabled:before { content: '\eaa7'; }
.codicon-debug-breakpoint-data-unverified:before { content: '\eaa8'; }
.codicon-debug-breakpoint-data:before { content: '\eaa9'; }
.codicon-debug-breakpoint-data-disabled:before { content: '\eaa9'; }
.codicon-debug-breakpoint-log-unverified:before { content: '\eaaa'; }
.codicon-debug-breakpoint-log:before { content: '\eaab'; }
.codicon-debug-breakpoint-log-disabled:before { content: '\eaab'; }
.codicon-briefcase:before { content: '\eaac'; }
.codicon-broadcast:before { content: '\eaad'; }
.codicon-browser:before { content: '\eaae'; }
.codicon-bug:before { content: '\eaaf'; }
.codicon-calendar:before { content: '\eab0'; }
.codicon-case-sensitive:before { content: '\eab1'; }
.codicon-check:before { content: '\eab2'; }
.codicon-checklist:before { content: '\eab3'; }
.codicon-chevron-down:before { content: '\eab4'; }
.codicon-drop-down-button:before { content: '\eab4'; }
.codicon-chevron-left:before { content: '\eab5'; }
.codicon-chevron-right:before { content: '\eab6'; }
.codicon-chevron-up:before { content: '\eab7'; }
.codicon-chrome-close:before { content: '\eab8'; }
.codicon-chrome-maximize:before { content: '\eab9'; }
.codicon-chrome-minimize:before { content: '\eaba'; }
.codicon-chrome-restore:before { content: '\eabb'; }
.codicon-circle:before { content: '\eabc'; }
.codicon-circle-outline:before { content: '\eabc'; }
.codicon-debug-breakpoint-unverified:before { content: '\eabc'; }
.codicon-circle-slash:before { content: '\eabd'; }
.codicon-circuit-board:before { content: '\eabe'; }
.codicon-clear-all:before { content: '\eabf'; }
.codicon-clippy:before { content: '\eac0'; }
.codicon-close-all:before { content: '\eac1'; }
.codicon-cloud-download:before { content: '\eac2'; }
.codicon-cloud-upload:before { content: '\eac3'; }
.codicon-code:before { content: '\eac4'; }
.codicon-collapse-all:before { content: '\eac5'; }
.codicon-color-mode:before { content: '\eac6'; }
.codicon-comment-discussion:before { content: '\eac7'; }
.codicon-compare-changes:before { content: '\eafd'; }
.codicon-credit-card:before { content: '\eac9'; }
.codicon-dash:before { content: '\eacc'; }
.codicon-dashboard:before { content: '\eacd'; }
.codicon-database:before { content: '\eace'; }
.codicon-debug-continue:before { content: '\eacf'; }
.codicon-debug-disconnect:before { content: '\ead0'; }
.codicon-debug-pause:before { content: '\ead1'; }
.codicon-debug-restart:before { content: '\ead2'; }
.codicon-debug-start:before { content: '\ead3'; }
.codicon-debug-step-into:before { content: '\ead4'; }
.codicon-debug-step-out:before { content: '\ead5'; }
.codicon-debug-step-over:before { content: '\ead6'; }
.codicon-debug-stop:before { content: '\ead7'; }
.codicon-debug:before { content: '\ead8'; }
.codicon-device-camera-video:before { content: '\ead9'; }
.codicon-device-camera:before { content: '\eada'; }
.codicon-device-mobile:before { content: '\eadb'; }
.codicon-diff-added:before { content: '\eadc'; }
.codicon-diff-ignored:before { content: '\eadd'; }
.codicon-diff-modified:before { content: '\eade'; }
.codicon-diff-removed:before { content: '\eadf'; }
.codicon-diff-renamed:before { content: '\eae0'; }
.codicon-diff:before { content: '\eae1'; }
.codicon-discard:before { content: '\eae2'; }
.codicon-editor-layout:before { content: '\eae3'; }
.codicon-empty-window:before { content: '\eae4'; }
.codicon-exclude:before { content: '\eae5'; }
.codicon-extensions:before { content: '\eae6'; }
.codicon-eye-closed:before { content: '\eae7'; }
.codicon-file-binary:before { content: '\eae8'; }
.codicon-file-code:before { content: '\eae9'; }
.codicon-file-media:before { content: '\eaea'; }
.codicon-file-pdf:before { content: '\eaeb'; }
.codicon-file-submodule:before { content: '\eaec'; }
.codicon-file-symlink-directory:before { content: '\eaed'; }
.codicon-file-symlink-file:before { content: '\eaee'; }
.codicon-file-zip:before { content: '\eaef'; }
.codicon-files:before { content: '\eaf0'; }
.codicon-filter:before { content: '\eaf1'; }
.codicon-flame:before { content: '\eaf2'; }
.codicon-fold-down:before { content: '\eaf3'; }
.codicon-fold-up:before { content: '\eaf4'; }
.codicon-fold:before { content: '\eaf5'; }
.codicon-folder-active:before { content: '\eaf6'; }
.codicon-folder-opened:before { content: '\eaf7'; }
.codicon-gear:before { content: '\eaf8'; }
.codicon-gift:before { content: '\eaf9'; }
.codicon-gist-secret:before { content: '\eafa'; }
.codicon-gist:before { content: '\eafb'; }
.codicon-git-commit:before { content: '\eafc'; }
.codicon-git-compare:before { content: '\eafd'; }
.codicon-git-merge:before { content: '\eafe'; }
.codicon-github-action:before { content: '\eaff'; }
.codicon-github-alt:before { content: '\eb00'; }
.codicon-globe:before { content: '\eb01'; }
.codicon-grabber:before { content: '\eb02'; }
.codicon-graph:before { content: '\eb03'; }
.codicon-gripper:before { content: '\eb04'; }
.codicon-heart:before { content: '\eb05'; }
.codicon-home:before { content: '\eb06'; }
.codicon-horizontal-rule:before { content: '\eb07'; }
.codicon-hubot:before { content: '\eb08'; }
.codicon-inbox:before { content: '\eb09'; }
.codicon-issue-closed:before { content: '\eba4'; }
.codicon-issue-reopened:before { content: '\eb0b'; }
.codicon-issues:before { content: '\eb0c'; }
.codicon-italic:before { content: '\eb0d'; }
.codicon-jersey:before { content: '\eb0e'; }
.codicon-json:before { content: '\eb0f'; }
.codicon-bracket:before { content: '\eb0f'; }
.codicon-kebab-vertical:before { content: '\eb10'; }
.codicon-key:before { content: '\eb11'; }
.codicon-law:before { content: '\eb12'; }
.codicon-lightbulb-autofix:before { content: '\eb13'; }
.codicon-link-external:before { content: '\eb14'; }
.codicon-link:before { content: '\eb15'; }
.codicon-list-ordered:before { content: '\eb16'; }
.codicon-list-unordered:before { content: '\eb17'; }
.codicon-live-share:before { content: '\eb18'; }
.codicon-loading:before { content: '\eb19'; }
.codicon-location:before { content: '\eb1a'; }
.codicon-mail-read:before { content: '\eb1b'; }
.codicon-mail:before { content: '\eb1c'; }
.codicon-markdown:before { content: '\eb1d'; }
.codicon-megaphone:before { content: '\eb1e'; }
.codicon-mention:before { content: '\eb1f'; }
.codicon-milestone:before { content: '\eb20'; }
.codicon-mortar-board:before { content: '\eb21'; }
.codicon-move:before { content: '\eb22'; }
.codicon-multiple-windows:before { content: '\eb23'; }
.codicon-mute:before { content: '\eb24'; }
.codicon-no-newline:before { content: '\eb25'; }
.codicon-note:before { content: '\eb26'; }
.codicon-octoface:before { content: '\eb27'; }
.codicon-open-preview:before { content: '\eb28'; }
.codicon-package:before { content: '\eb29'; }
.codicon-paintcan:before { content: '\eb2a'; }
.codicon-pin:before { content: '\eb2b'; }
.codicon-play:before { content: '\eb2c'; }
.codicon-run:before { content: '\eb2c'; }
.codicon-plug:before { content: '\eb2d'; }
.codicon-preserve-case:before { content: '\eb2e'; }
.codicon-preview:before { content: '\eb2f'; }
.codicon-project:before { content: '\eb30'; }
.codicon-pulse:before { content: '\eb31'; }
.codicon-question:before { content: '\eb32'; }
.codicon-quote:before { content: '\eb33'; }
.codicon-radio-tower:before { content: '\eb34'; }
.codicon-reactions:before { content: '\eb35'; }
.codicon-references:before { content: '\eb36'; }
.codicon-refresh:before { content: '\eb37'; }
.codicon-regex:before { content: '\eb38'; }
.codicon-remote-explorer:before { content: '\eb39'; }
.codicon-remote:before { content: '\eb3a'; }
.codicon-remove:before { content: '\eb3b'; }
.codicon-replace-all:before { content: '\eb3c'; }
.codicon-replace:before { content: '\eb3d'; }
.codicon-repo-clone:before { content: '\eb3e'; }
.codicon-repo-force-push:before { content: '\eb3f'; }
.codicon-repo-pull:before { content: '\eb40'; }
.codicon-repo-push:before { content: '\eb41'; }
.codicon-report:before { content: '\eb42'; }
.codicon-request-changes:before { content: '\eb43'; }
.codicon-rocket:before { content: '\eb44'; }
.codicon-root-folder-opened:before { content: '\eb45'; }
.codicon-root-folder:before { content: '\eb46'; }
.codicon-rss:before { content: '\eb47'; }
.codicon-ruby:before { content: '\eb48'; }
.codicon-save-all:before { content: '\eb49'; }
.codicon-save-as:before { content: '\eb4a'; }
.codicon-save:before { content: '\eb4b'; }
.codicon-screen-full:before { content: '\eb4c'; }
.codicon-screen-normal:before { content: '\eb4d'; }
.codicon-search-stop:before { content: '\eb4e'; }
.codicon-server:before { content: '\eb50'; }
.codicon-settings-gear:before { content: '\eb51'; }
.codicon-settings:before { content: '\eb52'; }
.codicon-shield:before { content: '\eb53'; }
.codicon-smiley:before { content: '\eb54'; }
.codicon-sort-precedence:before { content: '\eb55'; }
.codicon-split-horizontal:before { content: '\eb56'; }
.codicon-split-vertical:before { content: '\eb57'; }
.codicon-squirrel:before { content: '\eb58'; }
.codicon-star-full:before { content: '\eb59'; }
.codicon-star-half:before { content: '\eb5a'; }
.codicon-symbol-class:before { content: '\eb5b'; }
.codicon-symbol-color:before { content: '\eb5c'; }
.codicon-symbol-customcolor:before { content: '\eb5c'; }
.codicon-symbol-constant:before { content: '\eb5d'; }
.codicon-symbol-enum-member:before { content: '\eb5e'; }
.codicon-symbol-field:before { content: '\eb5f'; }
.codicon-symbol-file:before { content: '\eb60'; }
.codicon-symbol-interface:before { content: '\eb61'; }
.codicon-symbol-keyword:before { content: '\eb62'; }
.codicon-symbol-misc:before { content: '\eb63'; }
.codicon-symbol-operator:before { content: '\eb64'; }
.codicon-symbol-property:before { content: '\eb65'; }
.codicon-wrench:before { content: '\eb65'; }
.codicon-wrench-subaction:before { content: '\eb65'; }
.codicon-symbol-snippet:before { content: '\eb66'; }
.codicon-tasklist:before { content: '\eb67'; }
.codicon-telescope:before { content: '\eb68'; }
.codicon-text-size:before { content: '\eb69'; }
.codicon-three-bars:before { content: '\eb6a'; }
.codicon-thumbsdown:before { content: '\eb6b'; }
.codicon-thumbsup:before { content: '\eb6c'; }
.codicon-tools:before { content: '\eb6d'; }
.codicon-triangle-down:before { content: '\eb6e'; }
.codicon-triangle-left:before { content: '\eb6f'; }
.codicon-triangle-right:before { content: '\eb70'; }
.codicon-triangle-up:before { content: '\eb71'; }
.codicon-twitter:before { content: '\eb72'; }
.codicon-unfold:before { content: '\eb73'; }
.codicon-unlock:before { content: '\eb74'; }
.codicon-unmute:before { content: '\eb75'; }
.codicon-unverified:before { content: '\eb76'; }
.codicon-verified:before { content: '\eb77'; }
.codicon-versions:before { content: '\eb78'; }
.codicon-vm-active:before { content: '\eb79'; }
.codicon-vm-outline:before { content: '\eb7a'; }
.codicon-vm-running:before { content: '\eb7b'; }
.codicon-watch:before { content: '\eb7c'; }
.codicon-whitespace:before { content: '\eb7d'; }
.codicon-whole-word:before { content: '\eb7e'; }
.codicon-window:before { content: '\eb7f'; }
.codicon-word-wrap:before { content: '\eb80'; }
.codicon-zoom-in:before { content: '\eb81'; }
.codicon-zoom-out:before { content: '\eb82'; }
.codicon-list-filter:before { content: '\eb83'; }
.codicon-list-flat:before { content: '\eb84'; }
.codicon-list-selection:before { content: '\eb85'; }
.codicon-selection:before { content: '\eb85'; }
.codicon-list-tree:before { content: '\eb86'; }
.codicon-debug-breakpoint-function-unverified:before { content: '\eb87'; }
.codicon-debug-breakpoint-function:before { content: '\eb88'; }
.codicon-debug-breakpoint-function-disabled:before { content: '\eb88'; }
.codicon-debug-stackframe-active:before { content: '\eb89'; }
.codicon-circle-small-filled:before { content: '\eb8a'; }
.codicon-debug-stackframe-dot:before { content: '\eb8a'; }
.codicon-debug-stackframe:before { content: '\eb8b'; }
.codicon-debug-stackframe-focused:before { content: '\eb8b'; }
.codicon-debug-breakpoint-unsupported:before { content: '\eb8c'; }
.codicon-symbol-string:before { content: '\eb8d'; }
.codicon-debug-reverse-continue:before { content: '\eb8e'; }
.codicon-debug-step-back:before { content: '\eb8f'; }
.codicon-debug-restart-frame:before { content: '\eb90'; }
.codicon-call-incoming:before { content: '\eb92'; }
.codicon-call-outgoing:before { content: '\eb93'; }
.codicon-menu:before { content: '\eb94'; }
.codicon-expand-all:before { content: '\eb95'; }
.codicon-feedback:before { content: '\eb96'; }
.codicon-group-by-ref-type:before { content: '\eb97'; }
.codicon-ungroup-by-ref-type:before { content: '\eb98'; }
.codicon-account:before { content: '\eb99'; }
.codicon-bell-dot:before { content: '\eb9a'; }
.codicon-debug-console:before { content: '\eb9b'; }
.codicon-library:before { content: '\eb9c'; }
.codicon-output:before { content: '\eb9d'; }
.codicon-run-all:before { content: '\eb9e'; }
.codicon-sync-ignored:before { content: '\eb9f'; }
.codicon-pinned:before { content: '\eba0'; }
.codicon-github-inverted:before { content: '\eba1'; }
.codicon-debug-alt:before { content: '\eb91'; }
.codicon-server-process:before { content: '\eba2'; }
.codicon-server-environment:before { content: '\eba3'; }
.codicon-pass:before { content: '\eba4'; }
.codicon-stop-circle:before { content: '\eba5'; }
.codicon-play-circle:before { content: '\eba6'; }
.codicon-record:before { content: '\eba7'; }
.codicon-debug-alt-small:before { content: '\eba8'; }
.codicon-vm-connect:before { content: '\eba9'; }
.codicon-cloud:before { content: '\ebaa'; }
.codicon-merge:before { content: '\ebab'; }
.codicon-export:before { content: '\ebac'; }
.codicon-graph-left:before { content: '\ebad'; }
.codicon-magnet:before { content: '\ebae'; }
.codicon-notebook:before { content: '\ebaf'; }
.codicon-redo:before { content: '\ebb0'; }
.codicon-check-all:before { content: '\ebb1'; }
.codicon-pinned-dirty:before { content: '\ebb2'; }
.codicon-pass-filled:before { content: '\ebb3'; }
.codicon-circle-large-filled:before { content: '\ebb4'; }
.codicon-circle-large:before { content: '\ebb5'; }
.codicon-circle-large-outline:before { content: '\ebb5'; }
.codicon-combine:before { content: '\ebb6'; }
.codicon-gather:before { content: '\ebb6'; }
.codicon-table:before { content: '\ebb7'; }
.codicon-variable-group:before { content: '\ebb8'; }
.codicon-type-hierarchy:before { content: '\ebb9'; }
.codicon-type-hierarchy-sub:before { content: '\ebba'; }
.codicon-type-hierarchy-super:before { content: '\ebbb'; }
.codicon-git-pull-request-create:before { content: '\ebbc'; }
.codicon-run-above:before { content: '\ebbd'; }
.codicon-run-below:before { content: '\ebbe'; }
.codicon-notebook-template:before { content: '\ebbf'; }
.codicon-debug-rerun:before { content: '\ebc0'; }
.codicon-workspace-trusted:before { content: '\ebc1'; }
.codicon-workspace-untrusted:before { content: '\ebc2'; }
.codicon-workspace-unspecified:before { content: '\ebc3'; }
.codicon-terminal-cmd:before { content: '\ebc4'; }
.codicon-terminal-debian:before { content: '\ebc5'; }
.codicon-terminal-linux:before { content: '\ebc6'; }
.codicon-terminal-powershell:before { content: '\ebc7'; }
.codicon-terminal-tmux:before { content: '\ebc8'; }
.codicon-terminal-ubuntu:before { content: '\ebc9'; }
.codicon-terminal-bash:before { content: '\ebca'; }
.codicon-arrow-swap:before { content: '\ebcb'; }
.codicon-copy:before { content: '\ebcc'; }
.codicon-person-add:before { content: '\ebcd'; }
.codicon-filter-filled:before { content: '\ebce'; }
.codicon-wand:before { content: '\ebcf'; }
.codicon-debug-line-by-line:before { content: '\ebd0'; }
.codicon-inspect:before { content: '\ebd1'; }
.codicon-layers:before { content: '\ebd2'; }
.codicon-layers-dot:before { content: '\ebd3'; }
.codicon-layers-active:before { content: '\ebd4'; }
.codicon-compass:before { content: '\ebd5'; }
.codicon-compass-dot:before { content: '\ebd6'; }
.codicon-compass-active:before { content: '\ebd7'; }
.codicon-azure:before { content: '\ebd8'; }
.codicon-issue-draft:before { content: '\ebd9'; }
.codicon-git-pull-request-closed:before { content: '\ebda'; }
.codicon-git-pull-request-draft:before { content: '\ebdb'; }
.codicon-debug-all:before { content: '\ebdc'; }
.codicon-debug-coverage:before { content: '\ebdd'; }
.codicon-run-errors:before { content: '\ebde'; }
.codicon-folder-library:before { content: '\ebdf'; }
.codicon-debug-continue-small:before { content: '\ebe0'; }
.codicon-beaker-stop:before { content: '\ebe1'; }
.codicon-graph-line:before { content: '\ebe2'; }
.codicon-graph-scatter:before { content: '\ebe3'; }
.codicon-pie-chart:before { content: '\ebe4'; }
.codicon-bracket-dot:before { content: '\ebe5'; }
.codicon-bracket-error:before { content: '\ebe6'; }
.codicon-lock-small:before { content: '\ebe7'; }
.codicon-azure-devops:before { content: '\ebe8'; }
.codicon-verified-filled:before { content: '\ebe9'; }
.codicon-newline:before { content: '\ebea'; }
.codicon-layout:before { content: '\ebeb'; }
.codicon-layout-activitybar-left:before { content: '\ebec'; }
.codicon-layout-activitybar-right:before { content: '\ebed'; }
.codicon-layout-panel-left:before { content: '\ebee'; }
.codicon-layout-panel-center:before { content: '\ebef'; }
.codicon-layout-panel-justify:before { content: '\ebf0'; }
.codicon-layout-panel-right:before { content: '\ebf1'; }
.codicon-layout-panel:before { content: '\ebf2'; }
.codicon-layout-sidebar-left:before { content: '\ebf3'; }
.codicon-layout-sidebar-right:before { content: '\ebf4'; }
.codicon-layout-statusbar:before { content: '\ebf5'; }
.codicon-layout-menubar:before { content: '\ebf6'; }
.codicon-layout-centered:before { content: '\ebf7'; }
.codicon-layout-sidebar-right-off:before { content: '\ec00'; }
.codicon-layout-panel-off:before { content: '\ec01'; }
.codicon-layout-sidebar-left-off:before { content: '\ec02'; }
.codicon-target:before { content: '\ebf8'; }
.codicon-indent:before { content: '\ebf9'; }
.codicon-record-small:before { content: '\ebfa'; }
.codicon-error-small:before { content: '\ebfb'; }
.codicon-arrow-circle-down:before { content: '\ebfc'; }
.codicon-arrow-circle-left:before { content: '\ebfd'; }
.codicon-arrow-circle-right:before { content: '\ebfe'; }
.codicon-arrow-circle-up:before { content: '\ebff'; }
.codicon-heart-filled:before { content: '\ec04'; }
.codicon-map:before { content: '\ec05'; }
.codicon-map-filled:before { content: '\ec06'; }
.codicon-circle-small:before { content: '\ec07'; }
.codicon-bell-slash:before { content: '\ec08'; }
.codicon-bell-slash-dot:before { content: '\ec09'; }
.codicon-comment-unresolved:before { content: '\ec0a'; }
.codicon-git-pull-request-go-to-changes:before { content: '\ec0b'; }
.codicon-git-pull-request-new-changes:before { content: '\ec0c'; }
.codicon-search-fuzzy:before { content: '\ec0d'; }
.codicon-comment-draft:before { content: '\ec0e'; }
.codicon-send:before { content: '\ec0f'; }
.codicon-sparkle:before { content: '\ec10'; }
.codicon-insert:before { content: '\ec11'; }
.codicon-dialog-error:before { content: '\ea87'; }
.codicon-dialog-warning:before { content: '\ea6c'; }
.codicon-dialog-info:before { content: '\ea74'; }
.codicon-dialog-close:before { content: '\ea76'; }
.codicon-tree-item-expanded:before { content: '\eab4'; }
.codicon-tree-filter-on-type-on:before { content: '\eb83'; }
.codicon-tree-filter-on-type-off:before { content: '\eb85'; }
.codicon-tree-filter-clear:before { content: '\ea76'; }
.codicon-tree-item-loading:before { content: '\eb19'; }
.codicon-menu-selection:before { content: '\eab2'; }
.codicon-menu-submenu:before { content: '\eab6'; }
.codicon-menubar-more:before { content: '\ea7c'; }
.codicon-scrollbar-button-left:before { content: '\eb6f'; }
.codicon-scrollbar-button-right:before { content: '\eb70'; }
.codicon-scrollbar-button-up:before { content: '\eb71'; }
.codicon-scrollbar-button-down:before { content: '\eb6e'; }
.codicon-toolbar-more:before { content: '\ea7c'; }
.codicon-quick-input-back:before { content: '\ea9b'; }
.codicon-widget-close:before { content: '\ea76'; }
.codicon-goto-previous-location:before { content: '\eaa1'; }
.codicon-goto-next-location:before { content: '\ea9a'; }
.codicon-diff-review-insert:before { content: '\ea60'; }
.codicon-diff-review-remove:before { content: '\eb3b'; }
.codicon-diff-review-close:before { content: '\ea76'; }
.codicon-parameter-hints-next:before { content: '\eab4'; }
.codicon-parameter-hints-previous:before { content: '\eab7'; }
.codicon-suggest-more-info:before { content: '\eab6'; }
.codicon-inline-suggestion-hints-next:before { content: '\eab6'; }
.codicon-inline-suggestion-hints-previous:before { content: '\eab5'; }
.codicon-diff-insert:before { content: '\ea60'; }
.codicon-diff-remove:before { content: '\eb3b'; }
.codicon-find-selection:before { content: '\eb85'; }
.codicon-find-collapsed:before { content: '\eab6'; }
.codicon-find-expanded:before { content: '\eab4'; }
.codicon-find-replace:before { content: '\eb3d'; }
.codicon-find-replace-all:before { content: '\eb3c'; }
.codicon-find-previous-match:before { content: '\eaa1'; }
.codicon-find-next-match:before { content: '\ea9a'; }
.codicon-folding-expanded:before { content: '\eab4'; }
.codicon-folding-collapsed:before { content: '\eab6'; }
.codicon-folding-manual-collapsed:before { content: '\eab6'; }
.codicon-folding-manual-expanded:before { content: '\eab4'; }
.codicon-marker-navigation-next:before { content: '\ea9a'; }
.codicon-marker-navigation-previous:before { content: '\eaa1'; }
.codicon-extensions-warning-message:before { content: '\ea6c'; }
.monaco-editor .inputarea.ime-input { background-color: #f7f7f7; }
.monaco-editor .view-overlays .current-line { border: 2px solid #eeeeee; }
.monaco-editor .margin-view-overlays .current-line-margin { border: 2px solid #eeeeee; }
.monaco-editor .bracket-indent-guide.lvl-0 { --guide-color: rgba(4, 49, 250, 0.3); --guide-color-active: #0431fa; }
.monaco-editor .bracket-indent-guide.lvl-1 { --guide-color: rgba(49, 147, 49, 0.3); --guide-color-active: #319331; }
.monaco-editor .bracket-indent-guide.lvl-2 { --guide-color: rgba(123, 56, 20, 0.3); --guide-color-active: #7b3814; }
.monaco-editor .bracket-indent-guide.lvl-3 { --guide-color: rgba(4, 49, 250, 0.3); --guide-color-active: #0431fa; }
.monaco-editor .bracket-indent-guide.lvl-4 { --guide-color: rgba(49, 147, 49, 0.3); --guide-color-active: #319331; }
.monaco-editor .bracket-indent-guide.lvl-5 { --guide-color: rgba(123, 56, 20, 0.3); --guide-color-active: #7b3814; }
.monaco-editor .bracket-indent-guide.lvl-6 { --guide-color: rgba(4, 49, 250, 0.3); --guide-color-active: #0431fa; }
.monaco-editor .bracket-indent-guide.lvl-7 { --guide-color: rgba(49, 147, 49, 0.3); --guide-color-active: #319331; }
.monaco-editor .bracket-indent-guide.lvl-8 { --guide-color: rgba(123, 56, 20, 0.3); --guide-color-active: #7b3814; }
.monaco-editor .bracket-indent-guide.lvl-9 { --guide-color: rgba(4, 49, 250, 0.3); --guide-color-active: #0431fa; }
.monaco-editor .bracket-indent-guide.lvl-10 { --guide-color: rgba(49, 147, 49, 0.3); --guide-color-active: #319331; }
.monaco-editor .bracket-indent-guide.lvl-11 { --guide-color: rgba(123, 56, 20, 0.3); --guide-color-active: #7b3814; }
.monaco-editor .bracket-indent-guide.lvl-12 { --guide-color: rgba(4, 49, 250, 0.3); --guide-color-active: #0431fa; }
.monaco-editor .bracket-indent-guide.lvl-13 { --guide-color: rgba(49, 147, 49, 0.3); --guide-color-active: #319331; }
.monaco-editor .bracket-indent-guide.lvl-14 { --guide-color: rgba(123, 56, 20, 0.3); --guide-color-active: #7b3814; }
.monaco-editor .bracket-indent-guide.lvl-15 { --guide-color: rgba(4, 49, 250, 0.3); --guide-color-active: #0431fa; }
.monaco-editor .bracket-indent-guide.lvl-16 { --guide-color: rgba(49, 147, 49, 0.3); --guide-color-active: #319331; }
.monaco-editor .bracket-indent-guide.lvl-17 { --guide-color: rgba(123, 56, 20, 0.3); --guide-color-active: #7b3814; }
.monaco-editor .bracket-indent-guide.lvl-18 { --guide-color: rgba(4, 49, 250, 0.3); --guide-color-active: #0431fa; }
.monaco-editor .bracket-indent-guide.lvl-19 { --guide-color: rgba(49, 147, 49, 0.3); --guide-color-active: #319331; }
.monaco-editor .bracket-indent-guide.lvl-20 { --guide-color: rgba(123, 56, 20, 0.3); --guide-color-active: #7b3814; }
.monaco-editor .bracket-indent-guide.lvl-21 { --guide-color: rgba(4, 49, 250, 0.3); --guide-color-active: #0431fa; }
.monaco-editor .bracket-indent-guide.lvl-22 { --guide-color: rgba(49, 147, 49, 0.3); --guide-color-active: #319331; }
.monaco-editor .bracket-indent-guide.lvl-23 { --guide-color: rgba(123, 56, 20, 0.3); --guide-color-active: #7b3814; }
.monaco-editor .bracket-indent-guide.lvl-24 { --guide-color: rgba(4, 49, 250, 0.3); --guide-color-active: #0431fa; }
.monaco-editor .bracket-indent-guide.lvl-25 { --guide-color: rgba(49, 147, 49, 0.3); --guide-color-active: #319331; }
.monaco-editor .bracket-indent-guide.lvl-26 { --guide-color: rgba(123, 56, 20, 0.3); --guide-color-active: #7b3814; }
.monaco-editor .bracket-indent-guide.lvl-27 { --guide-color: rgba(4, 49, 250, 0.3); --guide-color-active: #0431fa; }
.monaco-editor .bracket-indent-guide.lvl-28 { --guide-color: rgba(49, 147, 49, 0.3); --guide-color-active: #319331; }
.monaco-editor .bracket-indent-guide.lvl-29 { --guide-color: rgba(123, 56, 20, 0.3); --guide-color-active: #7b3814; }
.monaco-editor .vertical { box-shadow: 1px 0 0 0 var(--guide-color) inset; }
.monaco-editor .horizontal-top { border-top: 1px solid var(--guide-color); }
.monaco-editor .horizontal-bottom { border-bottom: 1px solid var(--guide-color); }
.monaco-editor .vertical.indent-active { box-shadow: 1px 0 0 0 var(--guide-color-active) inset; }
.monaco-editor .horizontal-top.indent-active { border-top: 1px solid var(--guide-color-active); }
.monaco-editor .horizontal-bottom.indent-active { border-bottom: 1px solid var(--guide-color-active); }
.monaco-editor .line-numbers.dimmed-line-number { color: rgba(153, 153, 153, 0.4); }
.monaco-editor .cursors-layer .cursor { background-color: #000000; border-color: #000000; color: #ffffff; }
.monaco-editor .unexpected-closing-bracket { color: rgba(255, 18, 18, 0.8); }
.monaco-editor .bracket-highlighting-0 { color: #0431fa; }
.monaco-editor .bracket-highlighting-1 { color: #319331; }
.monaco-editor .bracket-highlighting-2 { color: #7b3814; }
.monaco-editor .bracket-highlighting-3 { color: #0431fa; }
.monaco-editor .bracket-highlighting-4 { color: #319331; }
.monaco-editor .bracket-highlighting-5 { color: #7b3814; }
.monaco-editor .bracket-highlighting-6 { color: #0431fa; }
.monaco-editor .bracket-highlighting-7 { color: #319331; }
.monaco-editor .bracket-highlighting-8 { color: #7b3814; }
.monaco-editor .bracket-highlighting-9 { color: #0431fa; }
.monaco-editor .bracket-highlighting-10 { color: #319331; }
.monaco-editor .bracket-highlighting-11 { color: #7b3814; }
.monaco-editor .bracket-highlighting-12 { color: #0431fa; }
.monaco-editor .bracket-highlighting-13 { color: #319331; }
.monaco-editor .bracket-highlighting-14 { color: #7b3814; }
.monaco-editor .bracket-highlighting-15 { color: #0431fa; }
.monaco-editor .bracket-highlighting-16 { color: #319331; }
.monaco-editor .bracket-highlighting-17 { color: #7b3814; }
.monaco-editor .bracket-highlighting-18 { color: #0431fa; }
.monaco-editor .bracket-highlighting-19 { color: #319331; }
.monaco-editor .bracket-highlighting-20 { color: #7b3814; }
.monaco-editor .bracket-highlighting-21 { color: #0431fa; }
.monaco-editor .bracket-highlighting-22 { color: #319331; }
.monaco-editor .bracket-highlighting-23 { color: #7b3814; }
.monaco-editor .bracket-highlighting-24 { color: #0431fa; }
.monaco-editor .bracket-highlighting-25 { color: #319331; }
.monaco-editor .bracket-highlighting-26 { color: #7b3814; }
.monaco-editor .bracket-highlighting-27 { color: #0431fa; }
.monaco-editor .bracket-highlighting-28 { color: #319331; }
.monaco-editor .bracket-highlighting-29 { color: #7b3814; }
.monaco-editor .squiggly-error { background: url("data:image/svg+xml,%3Csvg%20xmlns%3D'http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg'%20viewBox%3D'0%200%206%203'%20enable-background%3D'new%200%200%206%203'%20height%3D'3'%20width%3D'6'%3E%3Cg%20fill%3D'%23e51400'%3E%3Cpolygon%20points%3D'5.5%2C0%202.5%2C3%201.1%2C3%204.1%2C0'%2F%3E%3Cpolygon%20points%3D'4%2C0%206%2C2%206%2C0.6%205.4%2C0'%2F%3E%3Cpolygon%20points%3D'0%2C2%201%2C3%202.4%2C3%200%2C0.6'%2F%3E%3C%2Fg%3E%3C%2Fsvg%3E") repeat-x bottom left; }
.monaco-editor .squiggly-warning { background: url("data:image/svg+xml,%3Csvg%20xmlns%3D'http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg'%20viewBox%3D'0%200%206%203'%20enable-background%3D'new%200%200%206%203'%20height%3D'3'%20width%3D'6'%3E%3Cg%20fill%3D'%23bf8803'%3E%3Cpolygon%20points%3D'5.5%2C0%202.5%2C3%201.1%2C3%204.1%2C0'%2F%3E%3Cpolygon%20points%3D'4%2C0%206%2C2%206%2C0.6%205.4%2C0'%2F%3E%3Cpolygon%20points%3D'0%2C2%201%2C3%202.4%2C3%200%2C0.6'%2F%3E%3C%2Fg%3E%3C%2Fsvg%3E") repeat-x bottom left; }
.monaco-editor .squiggly-info { background: url("data:image/svg+xml,%3Csvg%20xmlns%3D'http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg'%20viewBox%3D'0%200%206%203'%20enable-background%3D'new%200%200%206%203'%20height%3D'3'%20width%3D'6'%3E%3Cg%20fill%3D'%231a85ff'%3E%3Cpolygon%20points%3D'5.5%2C0%202.5%2C3%201.1%2C3%204.1%2C0'%2F%3E%3Cpolygon%20points%3D'4%2C0%206%2C2%206%2C0.6%205.4%2C0'%2F%3E%3Cpolygon%20points%3D'0%2C2%201%2C3%202.4%2C3%200%2C0.6'%2F%3E%3C%2Fg%3E%3C%2Fsvg%3E") repeat-x bottom left; }
.monaco-editor .squiggly-hint { background: url("data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20height%3D%223%22%20width%3D%2212%22%3E%3Cg%20fill%3D%22%236c6c6c%22%3E%3Ccircle%20cx%3D%221%22%20cy%3D%221%22%20r%3D%221%22%2F%3E%3Ccircle%20cx%3D%225%22%20cy%3D%221%22%20r%3D%221%22%2F%3E%3Ccircle%20cx%3D%229%22%20cy%3D%221%22%20r%3D%221%22%2F%3E%3C%2Fg%3E%3C%2Fsvg%3E") no-repeat bottom left; }
.monaco-editor.showUnused .squiggly-inline-unnecessary { opacity: 0.467; }
.monaco-editor .selectionHighlight { background-color: rgba(173, 214, 255, 0.15); }

	.monaco-editor .diagonal-fill {
		background-image: linear-gradient(
			-45deg,
			rgba(34, 34, 34, 0.2) 12.5%,
			#0000 12.5%, #0000 50%,
			rgba(34, 34, 34, 0.2) 50%, rgba(34, 34, 34, 0.2) 62.5%,
			#0000 62.5%, #0000 100%
		);
		background-size: 8px 8px;
	}
	
.monaco-editor .findMatch { background-color: rgba(234, 92, 0, 0.33); }
.monaco-editor .currentFindMatch { background-color: #a8ac94; }
.monaco-editor .findScope { background-color: rgba(180, 180, 180, 0.3); }
.monaco-editor .find-widget { background-color: #f3f3f3; }
.monaco-editor .find-widget { box-shadow: 0 0 8px 2px rgba(0, 0, 0, 0.16); }
.monaco-editor .find-widget { color: #616161; }
.monaco-editor .find-widget.no-results .matchesCount { color: #a1260d; }
.monaco-editor .find-widget .monaco-sash { background-color: #c8c8c8; }

		.monaco-editor .find-widget .button:not(.disabled):hover,
		.monaco-editor .find-widget .codicon-find-selection:hover {
			background-color: rgba(184, 184, 184, 0.31) !important;
		}
	
.monaco-editor .find-widget .monaco-inputbox.synthetic-focus { outline-color: #0090f1; }
.monaco-editor .monaco-hover .hover-row:not(:first-child):not(:empty) { border-top: 1px solid rgba(200, 200, 200, 0.5); }
.monaco-editor .monaco-hover hr { border-top: 1px solid rgba(200, 200, 200, 0.5); }
.monaco-editor .monaco-hover hr { border-bottom: 0px solid rgba(200, 200, 200, 0.5); }
.monaco-editor { --vscode-foreground: #616161;
--vscode-disabledForeground: rgba(97, 97, 97, 0.5);
--vscode-errorForeground: #a1260d;
--vscode-descriptionForeground: #717171;
--vscode-icon-foreground: #424242;
--vscode-focusBorder: #0090f1;
--vscode-textSeparator-foreground: rgba(0, 0, 0, 0.18);
--vscode-textLink-foreground: #006ab1;
--vscode-textLink-activeForeground: #006ab1;
--vscode-textPreformat-foreground: #a31515;
--vscode-textBlockQuote-background: rgba(127, 127, 127, 0.1);
--vscode-textBlockQuote-border: rgba(0, 122, 204, 0.5);
--vscode-textCodeBlock-background: rgba(220, 220, 220, 0.4);
--vscode-widget-shadow: rgba(0, 0, 0, 0.16);
--vscode-input-background: #ffffff;
--vscode-input-foreground: #616161;
--vscode-inputOption-activeBorder: #007acc;
--vscode-inputOption-hoverBackground: rgba(184, 184, 184, 0.31);
--vscode-inputOption-activeBackground: rgba(0, 144, 241, 0.2);
--vscode-inputOption-activeForeground: #000000;
--vscode-input-placeholderForeground: rgba(97, 97, 97, 0.5);
--vscode-inputValidation-infoBackground: #d6ecf2;
--vscode-inputValidation-infoBorder: #007acc;
--vscode-inputValidation-warningBackground: #f6f5d2;
--vscode-inputValidation-warningBorder: #b89500;
--vscode-inputValidation-errorBackground: #f2dede;
--vscode-inputValidation-errorBorder: #be1100;
--vscode-dropdown-background: #ffffff;
--vscode-dropdown-foreground: #616161;
--vscode-dropdown-border: #cecece;
--vscode-button-foreground: #ffffff;
--vscode-button-separator: rgba(255, 255, 255, 0.4);
--vscode-button-background: #007acc;
--vscode-button-hoverBackground: #0062a3;
--vscode-button-secondaryForeground: #ffffff;
--vscode-button-secondaryBackground: #5f6a79;
--vscode-button-secondaryHoverBackground: #4c5561;
--vscode-badge-background: #c4c4c4;
--vscode-badge-foreground: #333333;
--vscode-scrollbar-shadow: #dddddd;
--vscode-scrollbarSlider-background: rgba(100, 100, 100, 0.4);
--vscode-scrollbarSlider-hoverBackground: rgba(100, 100, 100, 0.7);
--vscode-scrollbarSlider-activeBackground: rgba(0, 0, 0, 0.6);
--vscode-progressBar-background: #0e70c0;
--vscode-editorError-foreground: #e51400;
--vscode-editorWarning-foreground: #bf8803;
--vscode-editorInfo-foreground: #1a85ff;
--vscode-editorHint-foreground: #6c6c6c;
--vscode-sash-hoverBorder: #0090f1;
--vscode-editor-background: #f7f7f7;
--vscode-editor-foreground: #000000;
--vscode-editorStickyScroll-background: #f7f7f7;
--vscode-editorStickyScrollHover-background: #f0f0f0;
--vscode-editorWidget-background: #f3f3f3;
--vscode-editorWidget-foreground: #616161;
--vscode-editorWidget-border: #c8c8c8;
--vscode-quickInput-background: #f3f3f3;
--vscode-quickInput-foreground: #616161;
--vscode-quickInputTitle-background: rgba(0, 0, 0, 0.06);
--vscode-pickerGroup-foreground: #0066bf;
--vscode-pickerGroup-border: #cccedb;
--vscode-keybindingLabel-background: rgba(221, 221, 221, 0.4);
--vscode-keybindingLabel-foreground: #555555;
--vscode-keybindingLabel-border: rgba(204, 204, 204, 0.4);
--vscode-keybindingLabel-bottomBorder: rgba(187, 187, 187, 0.4);
--vscode-editor-selectionBackground: #add6ff;
--vscode-editor-inactiveSelectionBackground: #e5ebf1;
--vscode-editor-selectionHighlightBackground: rgba(173, 214, 255, 0.3);
--vscode-editor-findMatchBackground: #a8ac94;
--vscode-editor-findMatchHighlightBackground: rgba(234, 92, 0, 0.33);
--vscode-editor-findRangeHighlightBackground: rgba(180, 180, 180, 0.3);
--vscode-searchEditor-findMatchBackground: rgba(234, 92, 0, 0.22);
--vscode-search-resultsInfoForeground: #616161;
--vscode-editor-hoverHighlightBackground: rgba(173, 214, 255, 0.15);
--vscode-editorHoverWidget-background: #f3f3f3;
--vscode-editorHoverWidget-foreground: #616161;
--vscode-editorHoverWidget-border: #c8c8c8;
--vscode-editorHoverWidget-statusBarBackground: #e7e7e7;
--vscode-editorLink-activeForeground: #0000ff;
--vscode-editorInlayHint-foreground: #616161;
--vscode-editorInlayHint-background: rgba(196, 196, 196, 0.3);
--vscode-editorInlayHint-typeForeground: #616161;
--vscode-editorInlayHint-typeBackground: rgba(196, 196, 196, 0.3);
--vscode-editorInlayHint-parameterForeground: #616161;
--vscode-editorInlayHint-parameterBackground: rgba(196, 196, 196, 0.3);
--vscode-editorLightBulb-foreground: #ddb100;
--vscode-editorLightBulbAutoFix-foreground: #007acc;
--vscode-diffEditor-insertedTextBackground: rgba(155, 185, 85, 0.09);
--vscode-diffEditor-removedTextBackground: rgba(255, 0, 0, 0.03);
--vscode-diffEditor-insertedLineBackground: rgba(155, 185, 85, 0.09);
--vscode-diffEditor-removedLineBackground: rgba(255, 0, 0, 0.03);
--vscode-diffEditor-diagonalFill: rgba(34, 34, 34, 0.2);
--vscode-diffEditor-unchangedRegionBackground: #e4e4e4;
--vscode-diffEditor-unchangedRegionForeground: #4d4c4c;
--vscode-diffEditor-unchangedCodeBackground: rgba(184, 184, 184, 0.16);
--vscode-list-focusOutline: #0090f1;
--vscode-list-activeSelectionBackground: #d6ebff;
--vscode-list-activeSelectionForeground: #000000;
--vscode-list-inactiveSelectionBackground: #e4e6f1;
--vscode-list-hoverBackground: #f0f0f0;
--vscode-list-dropBackground: #d6ebff;
--vscode-list-highlightForeground: #0066bf;
--vscode-list-focusHighlightForeground: #0066bf;
--vscode-list-invalidItemForeground: #b89500;
--vscode-list-errorForeground: #b01011;
--vscode-list-warningForeground: #855f00;
--vscode-listFilterWidget-background: #f3f3f3;
--vscode-listFilterWidget-outline: rgba(0, 0, 0, 0);
--vscode-listFilterWidget-noMatchesOutline: #be1100;
--vscode-listFilterWidget-shadow: rgba(0, 0, 0, 0.16);
--vscode-list-filterMatchBackground: rgba(234, 92, 0, 0.33);
--vscode-tree-indentGuidesStroke: #a9a9a9;
--vscode-tree-inactiveIndentGuidesStroke: rgba(169, 169, 169, 0.4);
--vscode-tree-tableColumnsBorder: rgba(97, 97, 97, 0.13);
--vscode-tree-tableOddRowsBackground: rgba(97, 97, 97, 0.04);
--vscode-list-deemphasizedForeground: #8e8e90;
--vscode-checkbox-background: #ffffff;
--vscode-checkbox-selectBackground: #f3f3f3;
--vscode-checkbox-foreground: #616161;
--vscode-checkbox-border: #cecece;
--vscode-checkbox-selectBorder: #424242;
--vscode-quickInputList-focusForeground: #000000;
--vscode-quickInputList-focusBackground: #d6ebff;
--vscode-menu-foreground: #616161;
--vscode-menu-background: #ffffff;
--vscode-menu-selectionForeground: #000000;
--vscode-menu-selectionBackground: #d6ebff;
--vscode-menu-separatorBackground: #d4d4d4;
--vscode-toolbar-hoverBackground: rgba(184, 184, 184, 0.31);
--vscode-toolbar-activeBackground: rgba(166, 166, 166, 0.31);
--vscode-editor-snippetTabstopHighlightBackground: rgba(10, 50, 100, 0.2);
--vscode-editor-snippetFinalTabstopHighlightBorder: rgba(10, 50, 100, 0.5);
--vscode-breadcrumb-foreground: rgba(97, 97, 97, 0.8);
--vscode-breadcrumb-background: #f7f7f7;
--vscode-breadcrumb-focusForeground: #4e4e4e;
--vscode-breadcrumb-activeSelectionForeground: #4e4e4e;
--vscode-breadcrumbPicker-background: #f3f3f3;
--vscode-merge-currentHeaderBackground: rgba(64, 200, 174, 0.5);
--vscode-merge-currentContentBackground: rgba(64, 200, 174, 0.2);
--vscode-merge-incomingHeaderBackground: rgba(64, 166, 255, 0.5);
--vscode-merge-incomingContentBackground: rgba(64, 166, 255, 0.2);
--vscode-merge-commonHeaderBackground: rgba(96, 96, 96, 0.4);
--vscode-merge-commonContentBackground: rgba(96, 96, 96, 0.16);
--vscode-editorOverviewRuler-currentContentForeground: rgba(64, 200, 174, 0.5);
--vscode-editorOverviewRuler-incomingContentForeground: rgba(64, 166, 255, 0.5);
--vscode-editorOverviewRuler-commonContentForeground: rgba(96, 96, 96, 0.4);
--vscode-editorOverviewRuler-findMatchForeground: rgba(209, 134, 22, 0.49);
--vscode-editorOverviewRuler-selectionHighlightForeground: rgba(0, 0, 0, 0);
--vscode-minimap-findMatchHighlight: #d18616;
--vscode-minimap-selectionOccurrenceHighlight: #c9c9c9;
--vscode-minimap-selectionHighlight: #add6ff;
--vscode-minimap-errorHighlight: rgba(255, 18, 18, 0.7);
--vscode-minimap-warningHighlight: #bf8803;
--vscode-minimap-foregroundOpacity: #000000;
--vscode-minimapSlider-background: rgba(100, 100, 100, 0.2);
--vscode-minimapSlider-hoverBackground: rgba(100, 100, 100, 0.35);
--vscode-minimapSlider-activeBackground: rgba(0, 0, 0, 0.3);
--vscode-problemsErrorIcon-foreground: #e51400;
--vscode-problemsWarningIcon-foreground: #bf8803;
--vscode-problemsInfoIcon-foreground: #1a85ff;
--vscode-charts-foreground: #616161;
--vscode-charts-lines: rgba(97, 97, 97, 0.5);
--vscode-charts-red: #e51400;
--vscode-charts-blue: #1a85ff;
--vscode-charts-yellow: #bf8803;
--vscode-charts-orange: #d18616;
--vscode-charts-green: #388a34;
--vscode-charts-purple: #652d90;
--vscode-symbolIcon-arrayForeground: #616161;
--vscode-symbolIcon-booleanForeground: #616161;
--vscode-symbolIcon-classForeground: #d67e00;
--vscode-symbolIcon-colorForeground: #616161;
--vscode-symbolIcon-constantForeground: #616161;
--vscode-symbolIcon-constructorForeground: #652d90;
--vscode-symbolIcon-enumeratorForeground: #d67e00;
--vscode-symbolIcon-enumeratorMemberForeground: #007acc;
--vscode-symbolIcon-eventForeground: #d67e00;
--vscode-symbolIcon-fieldForeground: #007acc;
--vscode-symbolIcon-fileForeground: #616161;
--vscode-symbolIcon-folderForeground: #616161;
--vscode-symbolIcon-functionForeground: #652d90;
--vscode-symbolIcon-interfaceForeground: #007acc;
--vscode-symbolIcon-keyForeground: #616161;
--vscode-symbolIcon-keywordForeground: #616161;
--vscode-symbolIcon-methodForeground: #652d90;
--vscode-symbolIcon-moduleForeground: #616161;
--vscode-symbolIcon-namespaceForeground: #616161;
--vscode-symbolIcon-nullForeground: #616161;
--vscode-symbolIcon-numberForeground: #616161;
--vscode-symbolIcon-objectForeground: #616161;
--vscode-symbolIcon-operatorForeground: #616161;
--vscode-symbolIcon-packageForeground: #616161;
--vscode-symbolIcon-propertyForeground: #616161;
--vscode-symbolIcon-referenceForeground: #616161;
--vscode-symbolIcon-snippetForeground: #616161;
--vscode-symbolIcon-stringForeground: #616161;
--vscode-symbolIcon-structForeground: #616161;
--vscode-symbolIcon-textForeground: #616161;
--vscode-symbolIcon-typeParameterForeground: #616161;
--vscode-symbolIcon-unitForeground: #616161;
--vscode-symbolIcon-variableForeground: #007acc;
--vscode-editor-lineHighlightBorder: #eeeeee;
--vscode-editor-rangeHighlightBackground: rgba(253, 255, 0, 0.2);
--vscode-editor-symbolHighlightBackground: rgba(234, 92, 0, 0.33);
--vscode-editorCursor-foreground: #000000;
--vscode-editorWhitespace-foreground: rgba(51, 51, 51, 0.2);
--vscode-editorIndentGuide-background: #d3d3d3;
--vscode-editorIndentGuide-activeBackground: #939393;
--vscode-editorLineNumber-foreground: #999999;
--vscode-editorActiveLineNumber-foreground: #0b216f;
--vscode-editorLineNumber-activeForeground: #0b216f;
--vscode-editorRuler-foreground: #d3d3d3;
--vscode-editorCodeLens-foreground: #919191;
--vscode-editorBracketMatch-background: rgba(0, 100, 0, 0.1);
--vscode-editorBracketMatch-border: #b9b9b9;
--vscode-editorOverviewRuler-border: rgba(127, 127, 127, 0.3);
--vscode-editorGutter-background: #f7f7f7;
--vscode-editorUnnecessaryCode-opacity: rgba(0, 0, 0, 0.47);
--vscode-editorGhostText-foreground: rgba(0, 0, 0, 0.47);
--vscode-editorOverviewRuler-rangeHighlightForeground: rgba(0, 122, 204, 0.6);
--vscode-editorOverviewRuler-errorForeground: rgba(255, 18, 18, 0.7);
--vscode-editorOverviewRuler-warningForeground: #bf8803;
--vscode-editorOverviewRuler-infoForeground: #1a85ff;
--vscode-editorBracketHighlight-foreground1: #0431fa;
--vscode-editorBracketHighlight-foreground2: #319331;
--vscode-editorBracketHighlight-foreground3: #7b3814;
--vscode-editorBracketHighlight-foreground4: rgba(0, 0, 0, 0);
--vscode-editorBracketHighlight-foreground5: rgba(0, 0, 0, 0);
--vscode-editorBracketHighlight-foreground6: rgba(0, 0, 0, 0);
--vscode-editorBracketHighlight-unexpectedBracket-foreground: rgba(255, 18, 18, 0.8);
--vscode-editorBracketPairGuide-background1: rgba(0, 0, 0, 0);
--vscode-editorBracketPairGuide-background2: rgba(0, 0, 0, 0);
--vscode-editorBracketPairGuide-background3: rgba(0, 0, 0, 0);
--vscode-editorBracketPairGuide-background4: rgba(0, 0, 0, 0);
--vscode-editorBracketPairGuide-background5: rgba(0, 0, 0, 0);
--vscode-editorBracketPairGuide-background6: rgba(0, 0, 0, 0);
--vscode-editorBracketPairGuide-activeBackground1: rgba(0, 0, 0, 0);
--vscode-editorBracketPairGuide-activeBackground2: rgba(0, 0, 0, 0);
--vscode-editorBracketPairGuide-activeBackground3: rgba(0, 0, 0, 0);
--vscode-editorBracketPairGuide-activeBackground4: rgba(0, 0, 0, 0);
--vscode-editorBracketPairGuide-activeBackground5: rgba(0, 0, 0, 0);
--vscode-editorBracketPairGuide-activeBackground6: rgba(0, 0, 0, 0);
--vscode-editorUnicodeHighlight-border: #cea33d;
--vscode-editorUnicodeHighlight-background: rgba(206, 163, 61, 0.08);
--vscode-editorOverviewRuler-bracketMatchForeground: #a0a0a0;
--vscode-editor-linkedEditingBackground: rgba(255, 0, 0, 0.3);
--vscode-editor-wordHighlightBackground: rgba(87, 87, 87, 0.25);
--vscode-editor-wordHighlightStrongBackground: #d6ebff;
--vscode-editor-wordHighlightTextBackground: rgba(173, 214, 255, 0.45);
--vscode-editorOverviewRuler-wordHighlightForeground: rgba(160, 160, 160, 0.8);
--vscode-editorOverviewRuler-wordHighlightStrongForeground: rgba(192, 160, 192, 0.8);
--vscode-editorOverviewRuler-wordHighlightTextForeground: rgba(0, 0, 0, 0);
--vscode-peekViewTitle-background: #f3f3f3;
--vscode-peekViewTitleLabel-foreground: #000000;
--vscode-peekViewTitleDescription-foreground: #616161;
--vscode-peekView-border: #1a85ff;
--vscode-peekViewResult-background: #f3f3f3;
--vscode-peekViewResult-lineForeground: #646465;
--vscode-peekViewResult-fileForeground: #1e1e1e;
--vscode-peekViewResult-selectionBackground: rgba(51, 153, 255, 0.2);
--vscode-peekViewResult-selectionForeground: #6c6c6c;
--vscode-peekViewEditor-background: #f2f8fc;
--vscode-peekViewEditorGutter-background: #f2f8fc;
--vscode-peekViewEditorStickyScroll-background: #f2f8fc;
--vscode-peekViewResult-matchHighlightBackground: rgba(234, 92, 0, 0.3);
--vscode-peekViewEditor-matchHighlightBackground: rgba(245, 216, 2, 0.87);
--vscode-editorMarkerNavigationError-background: #e51400;
--vscode-editorMarkerNavigationError-headerBackground: rgba(229, 20, 0, 0.1);
--vscode-editorMarkerNavigationWarning-background: #bf8803;
--vscode-editorMarkerNavigationWarning-headerBackground: rgba(191, 136, 3, 0.1);
--vscode-editorMarkerNavigationInfo-background: #1a85ff;
--vscode-editorMarkerNavigationInfo-headerBackground: rgba(26, 133, 255, 0.1);
--vscode-editorMarkerNavigation-background: #f7f7f7;
--vscode-editorHoverWidget-highlightForeground: #0066bf;
--vscode-editorSuggestWidget-background: #f3f3f3;
--vscode-editorSuggestWidget-border: #c8c8c8;
--vscode-editorSuggestWidget-foreground: #000000;
--vscode-editorSuggestWidget-selectedForeground: #000000;
--vscode-editorSuggestWidget-selectedBackground: #d6ebff;
--vscode-editorSuggestWidget-highlightForeground: #0066bf;
--vscode-editorSuggestWidget-focusHighlightForeground: #0066bf;
--vscode-editorSuggestWidgetStatus-foreground: rgba(0, 0, 0, 0.5);
--vscode-editor-foldBackground: rgba(173, 214, 255, 0.3);
--vscode-editorGutter-foldingControlForeground: #424242; }

.mtk1 { color: #000000; }
.mtk2 { color: #f7f7f7; }
.mtk3 { color: #808080; }
.mtk4 { color: #ff0000; }
.mtk5 { color: #0451a5; }
.mtk6 { color: #0000ff; }
.mtk7 { color: #098658; }
.mtk8 { color: #008000; }
.mtk9 { color: #dd0000; }
.mtk10 { color: #811f3f; }
.mtk11 { color: #e00000; }
.mtk12 { color: #116644; }
.mtk13 { color: #383838; }
.mtk14 { color: #257693; }
.mtk15 { color: #795e26; }
.mtk16 { color: #001080; }
.mtk17 { color: #cd3131; }
.mtk18 { color: #863b00; }
.mtk19 { color: #af00db; }
.mtk20 { color: #c43b3b; }
.mtk21 { color: #800000; }
.mtk22 { color: #3030c0; }
.mtk23 { color: #666666; }
.mtk24 { color: #778899; }
.mtk25 { color: #c700c7; }
.mtk26 { color: #a31515; }
.mtk27 { color: #4f76ac; }
.mtk28 { color: #008080; }
.mtk29 { color: #001188; }
.mtk30 { color: #4864aa; }
.mtki { font-style: italic; }
.mtkb { font-weight: bold; }
.mtku { text-decoration: underline; text-underline-position: under; }
.mtks { text-decoration: line-through; }
.mtks.mtku { text-decoration: underline line-through; text-underline-position: under; }</style><style type="text/css">.MathJax_Display {text-align: center; margin: 0; position: relative; display: block!important; text-indent: 0; max-width: none; max-height: none; min-width: 0; min-height: 0; width: 100%}
.MathJax .merror {background-color: #FFFF88; color: #CC0000; border: 1px solid #CC0000; padding: 1px 3px; font-style: normal; font-size: 90%}
.MathJax .MJX-monospace {font-family: monospace}
.MathJax .MJX-sans-serif {font-family: sans-serif}
#MathJax_Tooltip {background-color: InfoBackground; color: InfoText; border: 1px solid black; box-shadow: 2px 2px 5px #AAAAAA; -webkit-box-shadow: 2px 2px 5px #AAAAAA; -moz-box-shadow: 2px 2px 5px #AAAAAA; -khtml-box-shadow: 2px 2px 5px #AAAAAA; filter: progid:DXImageTransform.Microsoft.dropshadow(OffX=2, OffY=2, Color='gray', Positive='true'); padding: 3px 4px; z-index: 401; position: absolute; left: 0; top: 0; width: auto; height: auto; display: none}
.MathJax {display: inline; font-style: normal; font-weight: normal; line-height: normal; font-size: 100%; font-size-adjust: none; text-indent: 0; text-align: left; text-transform: none; letter-spacing: normal; word-spacing: normal; word-wrap: normal; white-space: nowrap; float: none; direction: ltr; max-width: none; max-height: none; min-width: 0; min-height: 0; border: 0; padding: 0; margin: 0}
.MathJax:focus, body :focus .MathJax {display: inline-table}
.MathJax.MathJax_FullWidth {text-align: center; display: table-cell!important; width: 10000em!important}
.MathJax img, .MathJax nobr, .MathJax a {border: 0; padding: 0; margin: 0; max-width: none; max-height: none; min-width: 0; min-height: 0; vertical-align: 0; line-height: normal; text-decoration: none}
img.MathJax_strut {border: 0!important; padding: 0!important; margin: 0!important; vertical-align: 0!important}
.MathJax span {display: inline; position: static; border: 0; padding: 0; margin: 0; vertical-align: 0; line-height: normal; text-decoration: none; box-sizing: content-box}
.MathJax nobr {white-space: nowrap!important}
.MathJax img {display: inline!important; float: none!important}
.MathJax * {transition: none; -webkit-transition: none; -moz-transition: none; -ms-transition: none; -o-transition: none}
.MathJax_Processing {visibility: hidden; position: fixed; width: 0; height: 0; overflow: hidden}
.MathJax_Processed {display: none!important}
.MathJax_test {font-style: normal; font-weight: normal; font-size: 100%; font-size-adjust: none; text-indent: 0; text-transform: none; letter-spacing: normal; word-spacing: normal; overflow: hidden; height: 1px}
.MathJax_test.mjx-test-display {display: table!important}
.MathJax_test.mjx-test-inline {display: inline!important; margin-right: -1px}
.MathJax_test.mjx-test-default {display: block!important; clear: both}
.MathJax_ex_box {display: inline-block!important; position: absolute; overflow: hidden; min-height: 0; max-height: none; padding: 0; border: 0; margin: 0; width: 1px; height: 60ex}
.MathJax_em_box {display: inline-block!important; position: absolute; overflow: hidden; min-height: 0; max-height: none; padding: 0; border: 0; margin: 0; width: 1px; height: 60em}
.mjx-test-inline .MathJax_left_box {display: inline-block; width: 0; float: left}
.mjx-test-inline .MathJax_right_box {display: inline-block; width: 0; float: right}
.mjx-test-display .MathJax_right_box {display: table-cell!important; width: 10000em!important; min-width: 0; max-width: none; padding: 0; border: 0; margin: 0}
.MathJax .MathJax_HitBox {cursor: text; background: white; opacity: 0; filter: alpha(opacity=0)}
.MathJax .MathJax_HitBox * {filter: none; opacity: 1; background: transparent}
#MathJax_Tooltip * {filter: none; opacity: 1; background: transparent}
@font-face {font-family: MathJax_Main; src: url('https://colab.research.google.com/static/mathjax/fonts/HTML-CSS/TeX/woff/MathJax_Main-Regular.woff?V=2.7.5') format('woff'), url('https://colab.research.google.com/static/mathjax/fonts/HTML-CSS/TeX/otf/MathJax_Main-Regular.otf?V=2.7.5') format('opentype')}
@font-face {font-family: MathJax_Main-bold; src: url('https://colab.research.google.com/static/mathjax/fonts/HTML-CSS/TeX/woff/MathJax_Main-Bold.woff?V=2.7.5') format('woff'), url('https://colab.research.google.com/static/mathjax/fonts/HTML-CSS/TeX/otf/MathJax_Main-Bold.otf?V=2.7.5') format('opentype')}
@font-face {font-family: MathJax_Main-italic; src: url('https://colab.research.google.com/static/mathjax/fonts/HTML-CSS/TeX/woff/MathJax_Main-Italic.woff?V=2.7.5') format('woff'), url('https://colab.research.google.com/static/mathjax/fonts/HTML-CSS/TeX/otf/MathJax_Main-Italic.otf?V=2.7.5') format('opentype')}
@font-face {font-family: MathJax_Math-italic; src: url('https://colab.research.google.com/static/mathjax/fonts/HTML-CSS/TeX/woff/MathJax_Math-Italic.woff?V=2.7.5') format('woff'), url('https://colab.research.google.com/static/mathjax/fonts/HTML-CSS/TeX/otf/MathJax_Math-Italic.otf?V=2.7.5') format('opentype')}
@font-face {font-family: MathJax_Caligraphic; src: url('https://colab.research.google.com/static/mathjax/fonts/HTML-CSS/TeX/woff/MathJax_Caligraphic-Regular.woff?V=2.7.5') format('woff'), url('https://colab.research.google.com/static/mathjax/fonts/HTML-CSS/TeX/otf/MathJax_Caligraphic-Regular.otf?V=2.7.5') format('opentype')}
@font-face {font-family: MathJax_Size1; src: url('https://colab.research.google.com/static/mathjax/fonts/HTML-CSS/TeX/woff/MathJax_Size1-Regular.woff?V=2.7.5') format('woff'), url('https://colab.research.google.com/static/mathjax/fonts/HTML-CSS/TeX/otf/MathJax_Size1-Regular.otf?V=2.7.5') format('opentype')}
@font-face {font-family: MathJax_Size2; src: url('https://colab.research.google.com/static/mathjax/fonts/HTML-CSS/TeX/woff/MathJax_Size2-Regular.woff?V=2.7.5') format('woff'), url('https://colab.research.google.com/static/mathjax/fonts/HTML-CSS/TeX/otf/MathJax_Size2-Regular.otf?V=2.7.5') format('opentype')}
@font-face {font-family: MathJax_Size3; src: url('https://colab.research.google.com/static/mathjax/fonts/HTML-CSS/TeX/woff/MathJax_Size3-Regular.woff?V=2.7.5') format('woff'), url('https://colab.research.google.com/static/mathjax/fonts/HTML-CSS/TeX/otf/MathJax_Size3-Regular.otf?V=2.7.5') format('opentype')}
@font-face {font-family: MathJax_Size4; src: url('https://colab.research.google.com/static/mathjax/fonts/HTML-CSS/TeX/woff/MathJax_Size4-Regular.woff?V=2.7.5') format('woff'), url('https://colab.research.google.com/static/mathjax/fonts/HTML-CSS/TeX/otf/MathJax_Size4-Regular.otf?V=2.7.5') format('opentype')}
.MathJax .noError {vertical-align: ; font-size: 90%; text-align: left; color: black; padding: 1px 3px; border: 1px solid}
</style></head><body class=""><div style="visibility: hidden; overflow: hidden; position: absolute; top: 0px; height: 1px; width: auto; padding: 0px; border: 0px; margin: 0px; text-align: left; text-indent: 0px; text-transform: none; line-height: normal; letter-spacing: normal; word-spacing: normal;"><div id="MathJax_Hidden"></div></div><div id="MathJax_Message" style="display: none;"></div><div class="scripts"><script nonce="">window.performance.mark('external_scripts_start');</script><script src="./rainfall_files/gapi_loader.js.download" nonce=""></script><script src="./rainfall_files/socketio_binary.js.download" nonce=""></script><script src="./rainfall_files/analytics_binary.js.download" nonce=""></script><script src="./rainfall_files/MathJax.js.download" nonce=""></script><script src="./rainfall_files/js_monaco_editor_vs_loader.js.download" nonce=""></script><script nonce="">window.performance.mark('external_scripts_end'); window.performance.measure('external_scripts', 'external_scripts_start', 'external_scripts_end'); window.performance.mark('colab_load_start');</script><script src="./rainfall_files/external_binary.js.download" nonce=""></script><script nonce="">
          window.performance.mark('colab_load_end');
          window.performance.measure('colab_load', 'colab_load_start', 'colab_load_end');
        </script></div><colab-snackbar leading="" labeltext="" id="message-area" class="message-area"><template shadowrootmode="open"><!----><style>
        :host .mdc-snackbar__surface {
          background-color: var(--colab-snackbar-surface-color);
        }
      </style>
      <!--?lit$9212114395$-->
      <div class="mdc-snackbar mdc-snackbar--leading">
        <div class="mdc-snackbar__surface">
          <!--?lit$9212114395$-->
          <div class="mdc-snackbar__actions">
            <slot name="action"></slot>
            <slot name="dismiss"></slot>
          </div>
        </div>
      </div><!--?--></template>
      <md-icon-button class="close" slot="dismiss" title="Close" data-aria-label="Close" value=""><template shadowrootmode="open" shadowrootdelegatesfocus><!----><button id="button" class="icon-button  standard " aria-label="Close">
        <!--?lit$9212114395$--><md-focus-ring part="focus-ring" for="button" aria-hidden="true"><template shadowrootmode="open"><!----></template></md-focus-ring>
        <!--?lit$9212114395$--><md-ripple aria-hidden="true"><template shadowrootmode="open"><!----><div class="surface   "></div></template></md-ripple>
        <!--?lit$9212114395$--><span class="icon"><slot></slot></span>
        <!--?lit$9212114395$-->
        <!--?lit$9212114395$--><span class="touch"></span>
        <!--?lit$9212114395$-->
  </button></template>
        <md-icon aria-hidden="true"><template shadowrootmode="open"><!----><slot></slot></template>close</md-icon>
      </md-icon-button>
    </colab-snackbar><colab-snackbar leading="" labeltext="" id="message-area-secondary" class="message-area startup"><template shadowrootmode="open"><!----><style>
        :host .mdc-snackbar__surface {
          background-color: var(--colab-snackbar-surface-color);
        }
      </style>
      <!--?lit$9212114395$-->
      <div class="mdc-snackbar mdc-snackbar--leading">
        <div class="mdc-snackbar__surface">
          <!--?lit$9212114395$-->
          <div class="mdc-snackbar__actions">
            <slot name="action"></slot>
            <slot name="dismiss"></slot>
          </div>
        </div>
      </div><!--?--></template>
      <md-icon-button class="close" slot="dismiss" title="Close" data-aria-label="Close" value=""><template shadowrootmode="open" shadowrootdelegatesfocus><!----><button id="button" class="icon-button  standard " aria-label="Close">
        <!--?lit$9212114395$--><md-focus-ring part="focus-ring" for="button" aria-hidden="true"><template shadowrootmode="open"><!----></template></md-focus-ring>
        <!--?lit$9212114395$--><md-ripple aria-hidden="true"><template shadowrootmode="open"><!----><div class="surface   "></div></template></md-ripple>
        <!--?lit$9212114395$--><span class="icon"><slot></slot></span>
        <!--?lit$9212114395$-->
        <!--?lit$9212114395$--><span class="touch"></span>
        <!--?lit$9212114395$-->
  </button></template>
        <md-icon aria-hidden="true"><template shadowrootmode="open"><!----><slot></slot></template>close</md-icon>
      </md-icon-button>
    </colab-snackbar><div ng-non-bindable=""></div><div class="gb_r" ng-non-bindable=""><div class="gb_wc"><div>Google Account</div><div class="gb_wb">Ragul Azhagesan</div><div>azhagesanragul@gmail.com</div></div></div><script nonce="">this.gbar_=this.gbar_||{};(function(_){var window=this;
try{
var zd;_.yd=function(a){var b=typeof a;return b=="object"&&a!=null||b=="function"};zd=class extends _.id{};_.Ad=function(a,b){if(b in a.i)return a.i[b];throw new zd;};_.Bd=function(a){return _.Ad(_.fd.i(),a)};
}catch(e){_._DumpException(e)}
try{
/*

 SPDX-License-Identifier: Apache-2.0
*/
var Hd,Rd,Td;_.Cd=function(a){if(a==null)return a;if(typeof a==="string"){if(!a)return;a=+a}if(typeof a==="number")return Number.isFinite(a)?a|0:void 0};_.Dd=function(a){const b=a.length;if(b>0){const c=Array(b);for(let d=0;d<b;d++)c[d]=a[d];return c}return[]};_.Fd=function(a){if(a instanceof _.Ed)return a.i;throw Error("D");};Hd=function(a){return new Gd(b=>b.substr(0,a.length+1).toLowerCase()===a+":")};
_.Jd=function(a,b=_.Id){if(a instanceof _.Ed)return a;for(let c=0;c<b.length;++c){const d=b[c];if(d instanceof Gd&&d.Vg(a))return new _.Ed(a)}};_.Ld=function(a){if(Kd.test(a))return a};_.Md=function(a){return a instanceof _.Ed?_.Fd(a):_.Ld(a)};_.Nd=function(a,b){var c=Array.prototype.slice.call(arguments,1);return function(){var d=c.slice();d.push.apply(d,arguments);return a.apply(this,d)}};_.Od=function(a,b,c){return _.sb(a,b,c,!1)!==void 0};_.Pd=function(a,b){return _.Cd(_.Cc(a,b))};
_.S=function(a,b){a=_.Cc(a,b);return a==null?a:Number.isFinite(a)?a|0:void 0};_.T=function(a,b,c=0){return _.tb(_.Pd(a,b),c)};_.Qd=function(a,b,c=0){return _.tb(_.S(a,b),c)};Rd=0;_.Sd=function(a){return Object.prototype.hasOwnProperty.call(a,_.Hb)&&a[_.Hb]||(a[_.Hb]=++Rd)};Td=function(a){return a};_.Ud=function(a){var b=null,c=_.t.trustedTypes;if(!c||!c.createPolicy)return b;try{b=c.createPolicy(a,{createHTML:Td,createScript:Td,createScriptURL:Td})}catch(d){_.t.console&&_.t.console.error(d.message)}return b};
_.Vd=function(a,b){return a.lastIndexOf(b,0)==0};_.Wd=function(a,b){return Array.prototype.some.call(a,b,void 0)};try{(new self.OffscreenCanvas(0,0)).getContext("2d")}catch(a){};var Xd;_.Yd=function(){Xd===void 0&&(Xd=_.Ud("ogb-qtm#html"));return Xd};var ae;_.Zd=class{constructor(a){this.i=a}toString(){return this.i+""}};_.$d=function(a){return a instanceof _.Zd&&a.constructor===_.Zd?a.i:"type_error:TrustedResourceUrl"};ae={};_.be=function(a){const b=_.Yd();a=b?b.createScriptURL(a):a;return new _.Zd(a,ae)};_.Ed=class{constructor(a){this.i=a}toString(){return this.i}};_.ce=new _.Ed("about:invalid#zClosurez");var Gd,Kd;Gd=class{constructor(a){this.Vg=a}};_.Id=[Hd("data"),Hd("http"),Hd("https"),Hd("mailto"),Hd("ftp"),new Gd(a=>/^[^:]*([/?#]|$)/.test(a))];Kd=/^\s*(?!javascript:)(?:[\w+.-]+:|[^:/?#]*(?:[/?#]|$))/i;_.de={};_.ee=class{constructor(a){this.i=a}toString(){return this.i.toString()}};_.fe=new _.ee("",_.de);_.ge=RegExp("^[-+,.\"'%_!#/ a-zA-Z0-9\\[\\]]+$");_.he=RegExp("\\b(url\\([ \t\n]*)('[ -&(-\\[\\]-~]*'|\"[ !#-\\[\\]-~]*\"|[!#-&*-\\[\\]-~]*)([ \t\n]*\\))","g");_.ie=RegExp("\\b(calc|cubic-bezier|fit-content|hsl|hsla|linear-gradient|matrix|minmax|radial-gradient|repeat|rgb|rgba|(rotate|scale|translate)(X|Y|Z|3d)?|steps|var)\\([-+*/0-9a-zA-Z.%#\\[\\], ]+\\)","g");_.je={};_.le=function(a){return a instanceof _.ke&&a.constructor===_.ke?a.i:"type_error:SafeHtml"};_.ke=class{constructor(a){this.i=a}toString(){return this.i.toString()}};_.me=new _.ke(_.t.trustedTypes&&_.t.trustedTypes.emptyHTML||"",_.je);_.ne=function(a){let b=!1,c;return function(){b||(c=a(),b=!0);return c}}(function(){var a=document.createElement("div"),b=document.createElement("div");b.appendChild(document.createElement("div"));a.appendChild(b);b=a.firstChild.firstChild;a.innerHTML=_.le(_.me);return!b.parentElement});_.oe=function(a,b){this.width=a;this.height=b};_.n=_.oe.prototype;_.n.aspectRatio=function(){return this.width/this.height};_.n.Eb=function(){return!(this.width*this.height)};_.n.ceil=function(){this.width=Math.ceil(this.width);this.height=Math.ceil(this.height);return this};_.n.floor=function(){this.width=Math.floor(this.width);this.height=Math.floor(this.height);return this};_.n.round=function(){this.width=Math.round(this.width);this.height=Math.round(this.height);return this};_.U=function(a,b){var c=b||document;if(c.getElementsByClassName)a=c.getElementsByClassName(a)[0];else{c=document;var d=b||c;a=d.querySelectorAll&&d.querySelector&&a?d.querySelector(a?"."+a:""):_.pe(c,a,b)[0]||null}return a||null};
_.pe=function(a,b,c){var d;a=c||a;if(a.querySelectorAll&&a.querySelector&&b)return a.querySelectorAll(b?"."+b:"");if(b&&a.getElementsByClassName){var e=a.getElementsByClassName(b);return e}e=a.getElementsByTagName("*");if(b){var f={};for(c=d=0;a=e[c];c++){var g=a.className;typeof g.split=="function"&&_.ta(g.split(/\s+/),b)&&(f[d++]=a)}f.length=d;return f}return e};_.re=function(a){return _.qe(document,a)};
_.qe=function(a,b){b=String(b);a.contentType==="application/xhtml+xml"&&(b=b.toLowerCase());return a.createElement(b)};_.se=function(a){for(var b;b=a.firstChild;)a.removeChild(b)};_.te=function(a){return a.nodeType==9?a:a.ownerDocument||a.document};
}catch(e){_._DumpException(e)}
try{
_.Wi=function(a,b){let c,d;return(b=(d=(c=b.document).querySelector)==null?void 0:d.call(c,`${a}[nonce]`))?b.nonce||b.getAttribute("nonce")||"":""};_.Xi=function(a){const b=_.Wi("script",a.ownerDocument&&a.ownerDocument.defaultView||window);b&&a.setAttribute("nonce",b)};_.Yi=function(a){if(!a)return null;a=_.J(a,4);var b;a===null||a===void 0?b=null:b=_.be(a);return b};_.Zi=class extends _.Q{constructor(a){super(a)}};_.$i=function(a,b){return(b||document).getElementsByTagName(String(a))};
}catch(e){_._DumpException(e)}
try{
var bj=function(a,b,c){a<b?aj(a+1,b):_.Oc.log(Error("ca`"+a+"`"+b),{url:c})},aj=function(a,b){if(cj){const c=_.re("SCRIPT");c.async=!0;c.type="text/javascript";c.charset="UTF-8";c.src=_.$d(cj);_.Xi(c);c.onerror=_.Nd(bj,a,b,c.src);_.$i("HEAD")[0].appendChild(c)}},dj=class extends _.Q{constructor(a){super(a)}};var ej=_.E(_.$c,dj,17)||new dj,fj,cj=(fj=_.E(ej,_.Zi,1))?_.Yi(fj):null,gj,hj=(gj=_.E(ej,_.Zi,2))?_.Yi(gj):null,ij=function(){aj(1,2);if(hj){const a=_.re("LINK");a.setAttribute("type","text/css");a.href=_.$d(hj).toString();a.rel="stylesheet";let b=_.Wi("style",window);b&&a.setAttribute("nonce",b);_.$i("HEAD")[0].appendChild(a)}};(function(){const a=_.ad();if(_.I(a,18))ij();else{const b=_.Pd(a,19)||0;window.addEventListener("load",()=>{window.setTimeout(ij,b)})}})();
}catch(e){_._DumpException(e)}
})(this.gbar_);
// Google Inc.
</script><div style="position: absolute; width: 0px; height: 0px; overflow: hidden; padding: 0px; border: 0px; margin: 0px;"><div id="MathJax_Font_Test" style="position: absolute; visibility: hidden; top: 0px; left: 0px; width: auto; min-width: 0px; max-width: none; padding: 0px; border: 0px; margin: 0px; white-space: nowrap; text-align: left; text-indent: 0px; text-transform: none; line-height: normal; letter-spacing: normal; word-spacing: normal; font-size: 40px; font-weight: normal; font-style: normal; font-family: MathJax_Size1, monospace;"></div></div><div class="notebook-vertical" style="position: relative;">
      <div class="top-floater"><div role="banner">
    <colab-header-skip-button><template shadowrootmode="open"><!----><a id="skiplink" class="skip-link" href="https://colab.research.google.com/drive/1vbypCXK5x0GmLKj9bG5zQWB7WIP2Erti#top-toolbar"><!--?lit$9212114395$-->Skip to main content</a></template></colab-header-skip-button>
    <!--?lit$9212114395$-->
    <!--?lit$9212114395$-->
    <!--?lit$9212114395$-->
          <div id="private-outputs-warning" class="header-warning private-outputs-warning hidden">
            <!--?lit$9212114395$-->This notebook is open with private outputs. Outputs will not be saved. You can disable this in <a href="https://colab.research.google.com/drive/1vbypCXK5x0GmLKj9bG5zQWB7WIP2Erti#" id="private-outputs-notebook-info-link" command="notebook-settings" aria-describedby="private-outputs-notebook-info-link-tooltip">Notebook settings</a><colab-tooltip-trigger aria-hidden="true" for="private-outputs-notebook-info-link" id="private-outputs-notebook-info-link-tooltip"><template shadowrootmode="open"><!----><!--?lit$9212114395$--><!----><div><!--?lit$9212114395$-->Open notebook settings</div><!----><!--?--></template>
        </colab-tooltip-trigger>.
          <mwc-icon-button class="close" icon="close" title="Close"><template shadowrootmode="open"><!----><button class="mdc-icon-button mdc-icon-button--display-flex" aria-label="Close"><!--?lit$9212114395$-->
    <!--?lit$9212114395$--><i class="material-icons"><!--?lit$9212114395$-->close</i>
    <span><slot></slot></span>
  </button></template></mwc-icon-button></div>
        

    <div id="header" class="horizontal layout" style="display: none;">
      <div id="header-background"><div></div></div>
      <div id="header-content">
        <!--?lit$9212114395$-->
        <!--?lit$9212114395$--><div id="header-logo">
              <!--?lit$9212114395$--> <!--?lit$9212114395$--><a href="https://drive.google.com/drive/search?q=owner%3Ame%20(type%3Aapplication%2Fvnd.google.colaboratory%20%7C%7C%20type%3Aapplication%2Fvnd.google.colab)&amp;authuser=0" aria-label="View in Google Drive">
        <!--?lit$9212114395$--><md-icon class="colab-large-icon" aria-hidden="true"><template shadowrootmode="open"><!----><slot></slot></template><!--?lit$9212114395$--><svg viewBox="0 0 24 24"><!--?lit$9212114395$-->
      <g id="colab-logo">
        <path d="M4.54,9.46,2.19,7.1a6.93,6.93,0,0,0,0,9.79l2.36-2.36A3.59,3.59,0,0,1,4.54,9.46Z" style="fill:var(--colab-logo-dark)"></path>
        <path d="M2.19,7.1,4.54,9.46a3.59,3.59,0,0,1,5.08,0l1.71-2.93h0l-.1-.08h0A6.93,6.93,0,0,0,2.19,7.1Z" style="fill:var(--colab-logo-light)"></path>
        <path d="M11.34,17.46h0L9.62,14.54a3.59,3.59,0,0,1-5.08,0L2.19,16.9a6.93,6.93,0,0,0,9,.65l.11-.09" style="fill:var(--colab-logo-light)"></path>
        <path d="M12,7.1a6.93,6.93,0,0,0,0,9.79l2.36-2.36a3.59,3.59,0,1,1,5.08-5.08L21.81,7.1A6.93,6.93,0,0,0,12,7.1Z" style="fill:var(--colab-logo-light)"></path>
        <path d="M21.81,7.1,19.46,9.46a3.59,3.59,0,0,1-5.08,5.08L12,16.9A6.93,6.93,0,0,0,21.81,7.1Z" style="fill:var(--colab-logo-dark)"></path>
      </g></svg></md-icon>
      </a><!--?-->
            </div>
        <div id="header-doc-toolbar" class="flex">
          <div id="document-info">
            <!--?lit$9212114395$--> <!--?lit$9212114395$--><md-icon class="file-location-icon" id="file-type" aria-hidden="true" title="Notebook stored in Google Drive"><template shadowrootmode="open"><!----><slot></slot></template><!--?lit$9212114395$-->
      <svg viewBox="0 0 192 192">
        <path d="M128.33,122l7.59,26.17l19.89,21.42c0,0,0,0,0,0v0c2.69-1.55,4.98-3.8,6.59-6.59l18.48-32 c1.61-2.78,2.41-5.89,2.41-9l-28.38-5.5L128.33,122z" fill="#EA4335"></path>
        <path d="M123.48,18.41c-2.69-1.55-5.78-2.41-9-2.41H77.53c-3.2,0-6.32,0.88-9,2.41l0,0l7.96,26.81l19.44,20.64 L96,66l0,0l19.58-20.89L123.48,18.41C123.48,18.41,123.48,18.41,123.48,18.41C123.48,18.41,123.48,18.41,123.48,18.41z" fill="#188038"></path>
        <path d="M63.67,122l-28.33-6.5L8.72,122c0,3.1,0.8,6.2,2.4,8.99L29.6,163c1.61,2.78,3.9,5.03,6.59,6.59 l19.59-20.18L63.67,122L63.67,122z" fill="#1967D2"></path>
        <path d="M155.47,69l-25.4-44c-1.61-2.79-3.9-5.04-6.59-6.59L96,66l32.33,56h54.95c0-3.11-0.8-6.21-2.41-9 L155.47,69z" fill="#FBBC04"></path><path d="M128.33,122H63.67l-27.48,47.59c2.69,1.55,5.78,2.41,9,2.41h101.61c3.22,0,6.31-0.86,9-2.41L128.33,122z" fill="#4285F4"></path>
        <path d="M96,66L68.53,18.41c-2.69,1.55-4.97,3.79-6.58,6.57l-50.83,88.05c-1.6,2.78-2.4,5.88-2.4,8.97h54.95L96,66 z" fill="#34A853"></path>
      </svg></md-icon>
    <input id="doc-name" class="doc-name" maxlength="259" autocomplete="off" aria-label="Notebook name" disabled="" style="width: auto;"><colab-input-sizer aria-hidden="true" style="left: -1000%; position: absolute; font-family: &quot;Google Sans&quot;, Roboto, Noto, sans-serif; font-size: 18px; font-weight: 400; letter-spacing: normal; padding-left: 3px; padding-right: 4px; white-space: pre;">Untitled0.ipynb_</colab-input-sizer>
            <!--?lit$9212114395$-->
                  <div class="screenreader-only" id="star-status" aria-live="polite">Notebook unstarred</div>
                  <md-icon-button id="star-icon" command="toggle-star" aria-describedby="star-icon-tooltip" data-aria-label="Star" value=""><template shadowrootmode="open" shadowrootdelegatesfocus><!----><button id="button" class="icon-button  standard " aria-label="Star">
        <!--?lit$9212114395$--><md-focus-ring part="focus-ring" for="button" aria-hidden="true"><template shadowrootmode="open"><!----></template></md-focus-ring>
        <!--?lit$9212114395$--><md-ripple aria-hidden="true"><template shadowrootmode="open"><!----><div class="surface   "></div></template></md-ripple>
        <!--?lit$9212114395$--><span class="icon"><slot></slot></span>
        <!--?lit$9212114395$-->
        <!--?lit$9212114395$--><span class="touch"></span>
        <!--?lit$9212114395$-->
  </button></template>
                    <md-icon aria-hidden="true"><template shadowrootmode="open"><!----><slot></slot></template>star</md-icon>
                  </md-icon-button><colab-tooltip-trigger aria-hidden="true" for="star-icon" id="star-icon-tooltip"><template shadowrootmode="open"><!----><!--?lit$9212114395$--><!----><div><!--?lit$9212114395$-->Star notebook in Google Drive</div><!----><!--?--></template>
        </colab-tooltip-trigger>
                
          </div>
        <div class="menubar-wrapper"><div><!----><div id="top-menubar" class="goog-menubar format-lightborder" role="menubar" tabindex="0" style="user-select: none;"><!--?lit$9212114395$--><div class="goog-menu-button goog-inline-block" id="file-menu-button" role="button" aria-expanded="false" aria-haspopup="true" style="user-select: none;"><div class="goog-inline-block goog-menu-button-outer-box" style="user-select: none;"><div class="goog-inline-block goog-menu-button-inner-box" style="user-select: none;"><div class="goog-inline-block goog-menu-button-caption" style="user-select: none;"><!--?lit$9212114395$-->File</div><div class="goog-inline-block goog-menu-button-dropdown" style="user-select: none;">&nbsp;</div></div></div></div><div class="goog-menu-button goog-inline-block" id="edit-menu-button" role="button" aria-expanded="false" aria-haspopup="true" style="user-select: none;"><div class="goog-inline-block goog-menu-button-outer-box" style="user-select: none;"><div class="goog-inline-block goog-menu-button-inner-box" style="user-select: none;"><div class="goog-inline-block goog-menu-button-caption" style="user-select: none;"><!--?lit$9212114395$-->Edit</div><div class="goog-inline-block goog-menu-button-dropdown" style="user-select: none;">&nbsp;</div></div></div></div><div class="goog-menu-button goog-inline-block" id="view-menu-button" role="button" aria-expanded="false" aria-haspopup="true" style="user-select: none;"><div class="goog-inline-block goog-menu-button-outer-box" style="user-select: none;"><div class="goog-inline-block goog-menu-button-inner-box" style="user-select: none;"><div class="goog-inline-block goog-menu-button-caption" style="user-select: none;"><!--?lit$9212114395$-->View</div><div class="goog-inline-block goog-menu-button-dropdown" style="user-select: none;">&nbsp;</div></div></div></div><div class="goog-menu-button goog-inline-block" id="insert-menu-button" role="button" aria-expanded="false" aria-haspopup="true" style="user-select: none;"><div class="goog-inline-block goog-menu-button-outer-box" style="user-select: none;"><div class="goog-inline-block goog-menu-button-inner-box" style="user-select: none;"><div class="goog-inline-block goog-menu-button-caption" style="user-select: none;"><!--?lit$9212114395$-->Insert</div><div class="goog-inline-block goog-menu-button-dropdown" style="user-select: none;">&nbsp;</div></div></div></div><div class="goog-menu-button goog-inline-block" id="runtime-menu-button" role="button" aria-expanded="false" aria-haspopup="true" style="user-select: none;"><div class="goog-inline-block goog-menu-button-outer-box" style="user-select: none;"><div class="goog-inline-block goog-menu-button-inner-box" style="user-select: none;"><div class="goog-inline-block goog-menu-button-caption" style="user-select: none;"><!--?lit$9212114395$-->Runtime</div><div class="goog-inline-block goog-menu-button-dropdown" style="user-select: none;">&nbsp;</div></div></div></div><div class="goog-menu-button goog-inline-block" id="tools-menu-button" role="button" aria-expanded="false" aria-haspopup="true" style="user-select: none;"><div class="goog-inline-block goog-menu-button-outer-box" style="user-select: none;"><div class="goog-inline-block goog-menu-button-inner-box" style="user-select: none;"><div class="goog-inline-block goog-menu-button-caption" style="user-select: none;"><!--?lit$9212114395$-->Tools</div><div class="goog-inline-block goog-menu-button-dropdown" style="user-select: none;">&nbsp;</div></div></div></div><div class="goog-menu-button goog-inline-block" id="help-menu-button" role="button" aria-expanded="false" aria-haspopup="true" style="user-select: none;"><div class="goog-inline-block goog-menu-button-outer-box" style="user-select: none;"><div class="goog-inline-block goog-menu-button-inner-box" style="user-select: none;"><div class="goog-inline-block goog-menu-button-caption" style="user-select: none;"><!--?lit$9212114395$-->Help</div><div class="goog-inline-block goog-menu-button-dropdown" style="user-select: none;">&nbsp;</div></div></div></div></div>
    <div id="colab-menu-cover" style="display: none;"> </div></div><!----><colab-last-saved-indicator aria-live="polite" aria-atomic="true" title="You do not have permission to save this notebook. To keep your changes, make a copy of the notebook."><template shadowrootmode="open"><!----><button class=" save-message "><!--?lit$9212114395$-->Changes will not be saved</button></template></colab-last-saved-indicator></div></div>
        <div id="header-right">
          <!--?lit$9212114395$-->
    <colab-collaborator-bar id="collaborator-bar"><template shadowrootmode="open"><!----> <div class="collaborator-bar">
      <!--?lit$9212114395$-->
      <!--?lit$9212114395$-->
    </div></template></colab-collaborator-bar>
  
          <!--?lit$9212114395$--> <md-text-button id="comments" command="open-comments-thread" aria-describedby="comments-tooltip" value="" has-icon=""><template shadowrootmode="open" shadowrootdelegatesfocus><!---->
      <!--?lit$9212114395$-->
      <div class="background"></div>
      <md-focus-ring part="focus-ring" for="button" aria-hidden="true"><template shadowrootmode="open"><!----></template></md-focus-ring>
      <md-ripple part="ripple" for="button" aria-hidden="true"><template shadowrootmode="open"><!----><div class="surface   "></div></template></md-ripple>
      <!--?lit$9212114395$--><button id="button" class="button">
      <!--?lit$9212114395$-->
      <span class="touch"></span>
      <!--?lit$9212114395$--><slot name="icon"></slot>
      <span class="label"><slot></slot></span>
      <!--?lit$9212114395$-->
    
    </button>
    </template>
                <md-icon slot="icon" aria-hidden="true"><template shadowrootmode="open"><!----><slot></slot></template>comment</md-icon>
                <!--?lit$9212114395$-->Comment
              </md-text-button><colab-tooltip-trigger aria-hidden="true" for="comments" id="comments-tooltip"><template shadowrootmode="open"><!----><!--?lit$9212114395$--><!----><div><!--?lit$9212114395$-->Open comments pane</div><!----><!--?--></template>
        </colab-tooltip-trigger>
          <!--?lit$9212114395$--> <md-text-button id="share-toolbar-button" command="share" aria-describedby="share-toolbar-button-tooltip" value="" has-icon=""><template shadowrootmode="open" shadowrootdelegatesfocus><!---->
      <!--?lit$9212114395$-->
      <div class="background"></div>
      <md-focus-ring part="focus-ring" for="button" aria-hidden="true"><template shadowrootmode="open"><!----></template></md-focus-ring>
      <md-ripple part="ripple" for="button" aria-hidden="true"><template shadowrootmode="open"><!----><div class="surface   "></div></template></md-ripple>
      <!--?lit$9212114395$--><button id="button" class="button">
      <!--?lit$9212114395$-->
      <span class="touch"></span>
      <!--?lit$9212114395$--><slot name="icon"></slot>
      <span class="label"><slot></slot></span>
      <!--?lit$9212114395$-->
    
    </button>
    </template>
                <md-icon slot="icon" aria-hidden="true"><template shadowrootmode="open"><!----><slot></slot></template><!--?lit$9212114395$-->people</md-icon>
                <!--?lit$9212114395$-->Share
              </md-text-button><colab-tooltip-trigger aria-hidden="true" for="share-toolbar-button" id="share-toolbar-button-tooltip"><template shadowrootmode="open"><!----><!--?lit$9212114395$--><!----><div><!--?lit$9212114395$-->Share notebook</div><!----><!--?--></template>
        </colab-tooltip-trigger>
          <!--?lit$9212114395$--> <md-icon-button id="settings-cog" command="preferences" title="Open settings" data-aria-label="Open settings" value=""><template shadowrootmode="open" shadowrootdelegatesfocus><!----><button id="button" class="icon-button  standard " aria-label="Open settings">
        <!--?lit$9212114395$--><md-focus-ring part="focus-ring" for="button" aria-hidden="true"><template shadowrootmode="open"><!----></template></md-focus-ring>
        <!--?lit$9212114395$--><md-ripple aria-hidden="true"><template shadowrootmode="open"><!----><div class="surface   "></div></template></md-ripple>
        <!--?lit$9212114395$--><span class="icon"><slot></slot></span>
        <!--?lit$9212114395$-->
        <!--?lit$9212114395$--><span class="touch"></span>
        <!--?lit$9212114395$-->
  </button></template>
                <md-icon aria-hidden="true"><template shadowrootmode="open"><!----><slot></slot></template>settings</md-icon>
              </md-icon-button>
          <div class="header-onegoogle-container"><div class="onegoogle"><div class="gb_ga gb_cd gb_8a gb_Rc" id="gb"><div class="gb_td gb_6a gb_hd" ng-non-bindable="" data-ogsr-up="" style="padding:0;height:auto;display:block"><div class="gb_Ld" style="display:block"><div class="gb_Xc"></div><div class="gb_b gb_Fd gb_Pf gb_z"><div class="gb_f gb_5a gb_Pf gb_z"><a class="gb_d gb_ya gb_z" aria-label="Google Account: Ragul Azhagesan  
(azhagesanragul@gmail.com)" href="https://accounts.google.com/SignOutOptions?hl=en&amp;continue=https://colab.research.google.com/drive/1vbypCXK5x0GmLKj9bG5zQWB7WIP2Erti&amp;ec=GBRAqQM" tabindex="0" role="button"><img class="gb_p gbii" src="./rainfall_files/unnamed.png" srcset="https://lh3.google.com/u/0/ogw/AF2bZyiEFPefhb_Hod7qXbUD7yliGXvJ8-3P03zU44O-NbFvjw=s32-c-mo 1x, https://lh3.google.com/u/0/ogw/AF2bZyiEFPefhb_Hod7qXbUD7yliGXvJ8-3P03zU44O-NbFvjw=s64-c-mo 2x " alt="" aria-hidden="true" data-noaft=""></a></div></div></div><div style="overflow: hidden; position: absolute; top: 0px; visibility: hidden; width: 436px; z-index: 991; height: 0px; margin-top: 57px; right: 0px; margin-right: 4px;"></div><div style="overflow: hidden; position: absolute; top: 0px; visibility: hidden; width: 420px; z-index: 991; height: 280px; margin-top: 70px; right: 0px; margin-right: 25px;"></div></div></div><script nonce="">this.gbar_=this.gbar_||{};(function(_){var window=this;
try{
_.ud=function(a,b,c){if(!a.j)if(c instanceof Array)for(var d of c)_.ud(a,b,d);else{d=(0,_.z)(a.C,a,b);const e=a.v+c;a.v++;b.dataset.eqid=e;a.B[e]=d;b&&b.addEventListener?b.addEventListener(c,d,!1):b&&b.attachEvent?b.attachEvent("on"+c,d):a.o.log(Error("z`"+b))}};
}catch(e){_._DumpException(e)}
try{
_.vd=function(){if(!_.t.addEventListener||!Object.defineProperty)return!1;var a=!1,b=Object.defineProperty({},"passive",{get:function(){a=!0}});try{const c=()=>{};_.t.addEventListener("test",c,b);_.t.removeEventListener("test",c,b)}catch(c){}return a}();
}catch(e){_._DumpException(e)}
try{
var wd=document.querySelector(".gb_k .gb_d"),xd=document.querySelector("#gb.gb_Oc");wd&&!xd&&_.ud(_.ed,wd,"click");
}catch(e){_._DumpException(e)}
try{
_.uh=function(a){const b=[];let c=0;for(const d in a)b[c++]=a[d];return b};_.vh=function(a){if(a.v)return a.v;for(const b in a.i)if(a.i[b].qa()&&a.i[b].B())return a.i[b];return null};_.wh=function(a,b){a.i[b.K()]=b};var xh=new class extends _.R{constructor(){var a=_.Oc;super();this.B=a;this.v=null;this.o={};this.C={};this.i={};this.j=null}A(a){this.i[a]&&(_.vh(this)&&_.vh(this).K()==a||this.i[a].P(!0))}Wa(a){this.j=a;for(const b in this.i)this.i[b].qa()&&this.i[b].Wa(a)}nc(a){return a in this.i?this.i[a]:null}};_.hd("dd",xh);
}catch(e){_._DumpException(e)}
try{
_.Pi=function(a,b){return _.M(a,36,b)};
}catch(e){_._DumpException(e)}
try{
var Qi=document.querySelector(".gb_b .gb_d"),Ri=document.querySelector("#gb.gb_Oc");Qi&&!Ri&&_.ud(_.ed,Qi,"click");
}catch(e){_._DumpException(e)}
})(this.gbar_);
// Google Inc.
</script></div></div>
        </div>
      </div>
    </div>
  </div></div><div class="notebook-horizontal">
        <!--?lit$9212114395$--><colab-left-pane role="complementary" aria-label="left pane" class=""><!----><div class="colab-left-pane-nib layout vertical" role="toolbar" aria-orientation="vertical">
        <div class="left-pane-top"><!----><div class="left-pane-button">
        <!--?lit$9212114395$--><md-icon-button toggle="" command="show-toc-pane" data-aria-label="Table of contents" title="Table of contents" value=""><template shadowrootmode="open" shadowrootdelegatesfocus><!----><button id="button" class="icon-button standard" aria-label="Table of contents" aria-pressed="false">
        <!--?lit$9212114395$--><md-focus-ring part="focus-ring" for="button" aria-hidden="true"><template shadowrootmode="open"><!----></template></md-focus-ring>
        <!--?lit$9212114395$--><md-ripple aria-hidden="true"><template shadowrootmode="open"><!----><div class="surface   "></div></template></md-ripple>
        <!--?lit$9212114395$--><span class="icon"><slot></slot></span>
        <!--?lit$9212114395$-->
        <!--?lit$9212114395$--><span class="touch"></span>
        <!--?lit$9212114395$-->
  </button></template>
      <md-icon aria-hidden="true"><template shadowrootmode="open"><!----><slot></slot></template><!--?lit$9212114395$-->format_list_bulleted</md-icon>
    </md-icon-button> <!--?lit$9212114395$-->
      </div><!----><div class="left-pane-button">
        <!--?lit$9212114395$--><md-icon-button toggle="" command="find" data-aria-label="Find and replace" title="Find and replace" tabindex="-1" value=""><template shadowrootmode="open" shadowrootdelegatesfocus><!----><button id="button" class="icon-button  standard " aria-label="Find and replace" aria-pressed="false">
        <!--?lit$9212114395$--><md-focus-ring part="focus-ring" for="button" aria-hidden="true"><template shadowrootmode="open"><!----></template></md-focus-ring>
        <!--?lit$9212114395$--><md-ripple aria-hidden="true"><template shadowrootmode="open"><!----><div class="surface   "></div></template></md-ripple>
        <!--?lit$9212114395$--><span class="icon"><slot></slot></span>
        <!--?lit$9212114395$-->
        <!--?lit$9212114395$--><span class="touch"></span>
        <!--?lit$9212114395$-->
  </button></template>
      <md-icon aria-hidden="true"><template shadowrootmode="open"><!----><slot></slot></template><!--?lit$9212114395$-->search</md-icon>
    </md-icon-button> <!--?lit$9212114395$-->
      </div><!----><div class="left-pane-button">
        <!--?lit$9212114395$--><md-icon-button toggle="" command="show-variables" data-aria-label="Variables" title="Variables" tabindex="-1" value=""><template shadowrootmode="open" shadowrootdelegatesfocus><!----><button id="button" class="icon-button  standard " aria-label="Variables" aria-pressed="false">
        <!--?lit$9212114395$--><md-focus-ring part="focus-ring" for="button" aria-hidden="true"><template shadowrootmode="open"><!----></template></md-focus-ring>
        <!--?lit$9212114395$--><md-ripple aria-hidden="true"><template shadowrootmode="open"><!----><div class="surface   "></div></template></md-ripple>
        <!--?lit$9212114395$--><span class="icon"><slot></slot></span>
        <!--?lit$9212114395$-->
        <!--?lit$9212114395$--><span class="touch"></span>
        <!--?lit$9212114395$-->
  </button></template>
      <md-icon aria-hidden="true"><template shadowrootmode="open"><!----><slot></slot></template><!--?lit$9212114395$--><svg viewBox="0 0 24 24"><!--?lit$9212114395$-->
      <path d="M4.51,9.44V6.08c0-1.34.37-1.85,1.6-2.17l.22-.06V3.13l-.27,0-.44,0a4.46,4.46,0,0,0-2.2.59,2.78,2.78,0,0,0-1,2.51V9.74c0,1.26-.26,1.61-1.49,2L0,12l.94.29c1.21.38,1.49.75,1.49,2v3.5a2.94,2.94,0,0,0,1,2.6,4.39,4.39,0,0,0,2.14.56l.46,0,.27,0v-.72l-.22-.06c-1.24-.32-1.6-.81-1.6-2.17V14.58c0-1.43-.3-2.13-1.25-2.57C4.2,11.57,4.51,10.87,4.51,9.44Z"></path>
      <path d="M23.06,11.71c-1.22-.36-1.49-.71-1.49-2l0-3.5a3,3,0,0,0-1-2.6,4.38,4.38,0,0,0-2.14-.56l-.46,0-.27,0v.72l.22.06c1.24.32,1.6.81,1.6,2.17V9.44c0,1.44.3,2.13,1.25,2.57-1,.44-1.25,1.14-1.25,2.57v3.36c0,1.34-.37,1.85-1.6,2.17l-.22.06v.72l.27,0,.44,0a4.47,4.47,0,0,0,2.2-.59,2.82,2.82,0,0,0,1-2.51V14.28c0-1.26.26-1.61,1.49-2L24,12Z"></path>
      <path d="M15.16,8.22a.88.88,0,0,1,.46.16,1.25,1.25,0,0,0,.69.2h0A1,1,0,0,0,17,8.23a1.06,1.06,0,0,0,.24-.8,1.1,1.1,0,0,0-1.15-1h0c-1,0-1.73.64-3,2.57l-.12-.51c-.28-1.36-.56-2-1.39-2h0A8,8,0,0,0,9,7.08l-.47.16.16.91L9.41,8a3.22,3.22,0,0,1,.73-.14c.34,0,.43,0,.71,1.2l.56,2.47L9.76,13.82a3.6,3.6,0,0,1-.8.88.9.9,0,0,1-.38-.13,1.83,1.83,0,0,0-.88-.28,1,1,0,0,0-1,1.06A1.15,1.15,0,0,0,8,16.53c.85,0,1.35-.35,2.24-1.55l1.49-2,.46,1.88c.23,1,.46,1.66,1.53,1.66s1.66-.75,2.81-2.53l.17-.26-.81-.48-.16.2-.25.34-.19.25c-.45.57-.62.73-.76.73s-.28-.4-.34-.63l-.67-2.83a4.2,4.2,0,0,1-.15-.79C13.84,9.78,14.74,8.22,15.16,8.22Z"></path></svg></md-icon>
    </md-icon-button> <!--?lit$9212114395$-->
      </div><!----><div class="left-pane-button">
        <!--?lit$9212114395$--><md-icon-button toggle="" command="open-user-secrets" data-aria-label="Secrets" title="Secrets" tabindex="-1" value=""><template shadowrootmode="open" shadowrootdelegatesfocus><!----><button id="button" class="icon-button  standard " aria-label="Secrets" aria-pressed="false">
        <!--?lit$9212114395$--><md-focus-ring part="focus-ring" for="button" aria-hidden="true"><template shadowrootmode="open"><!----></template></md-focus-ring>
        <!--?lit$9212114395$--><md-ripple aria-hidden="true"><template shadowrootmode="open"><!----><div class="surface   "></div></template></md-ripple>
        <!--?lit$9212114395$--><span class="icon"><slot></slot></span>
        <!--?lit$9212114395$-->
        <!--?lit$9212114395$--><span class="touch"></span>
        <!--?lit$9212114395$-->
  </button></template>
      <md-icon aria-hidden="true"><template shadowrootmode="open"><!----><slot></slot></template><!--?lit$9212114395$-->vpn_key</md-icon>
    </md-icon-button> <!--?lit$9212114395$-->
      </div><!----><div class="left-pane-button">
        <!--?lit$9212114395$--><md-icon-button toggle="" command="show-files" data-aria-label="Files" title="Files" tabindex="-1" value=""><template shadowrootmode="open" shadowrootdelegatesfocus><!----><button id="button" class="icon-button  standard " aria-label="Files" aria-pressed="false">
        <!--?lit$9212114395$--><md-focus-ring part="focus-ring" for="button" aria-hidden="true"><template shadowrootmode="open"><!----></template></md-focus-ring>
        <!--?lit$9212114395$--><md-ripple aria-hidden="true"><template shadowrootmode="open"><!----><div class="surface   "></div></template></md-ripple>
        <!--?lit$9212114395$--><span class="icon"><slot></slot></span>
        <!--?lit$9212114395$-->
        <!--?lit$9212114395$--><span class="touch"></span>
        <!--?lit$9212114395$-->
  </button></template>
      <md-icon aria-hidden="true"><template shadowrootmode="open"><!----><slot></slot></template><!--?lit$9212114395$-->folder</md-icon>
    </md-icon-button> <!--?lit$9212114395$-->
      </div></div>
        <div class="left-pane-bottom"><!----><div class="left-pane-button">
        <!--?lit$9212114395$--><md-icon-button command="snippets" data-aria-label="Code snippets" title="Code snippets" tabindex="-1" value=""><template shadowrootmode="open" shadowrootdelegatesfocus><!----><button id="button" class="icon-button  standard " aria-label="Code snippets">
        <!--?lit$9212114395$--><md-focus-ring part="focus-ring" for="button" aria-hidden="true"><template shadowrootmode="open"><!----></template></md-focus-ring>
        <!--?lit$9212114395$--><md-ripple aria-hidden="true"><template shadowrootmode="open"><!----><div class="surface   "></div></template></md-ripple>
        <!--?lit$9212114395$--><span class="icon"><slot></slot></span>
        <!--?lit$9212114395$-->
        <!--?lit$9212114395$--><span class="touch"></span>
        <!--?lit$9212114395$-->
  </button></template>
      <md-icon aria-hidden="true"><template shadowrootmode="open"><!----><slot></slot></template><!--?lit$9212114395$-->code</md-icon>
    </md-icon-button> <!--?lit$9212114395$-->
      </div><!----><div class="left-pane-button">
        <!--?lit$9212114395$--><md-icon-button command="show-command-palette" data-aria-label="Command palette" title="Command palette" tabindex="-1" value=""><template shadowrootmode="open" shadowrootdelegatesfocus><!----><button id="button" class="icon-button  standard " aria-label="Command palette">
        <!--?lit$9212114395$--><md-focus-ring part="focus-ring" for="button" aria-hidden="true"><template shadowrootmode="open"><!----></template></md-focus-ring>
        <!--?lit$9212114395$--><md-ripple aria-hidden="true"><template shadowrootmode="open"><!----><div class="surface   "></div></template></md-ripple>
        <!--?lit$9212114395$--><span class="icon"><slot></slot></span>
        <!--?lit$9212114395$-->
        <!--?lit$9212114395$--><span class="touch"></span>
        <!--?lit$9212114395$-->
  </button></template>
      <md-icon aria-hidden="true"><template shadowrootmode="open"><!----><slot></slot></template><!--?lit$9212114395$--><svg viewBox="0 0 24 24"><!--?lit$9212114395$-->
      <path d="M21,3H3A2,2,0,0,0,1,5V17a2,2,0,0,0,2,2H21a2,2,0,0,0,2-2V5A2,2,0,0,0,21,3Zm0,2V17H3V5"></path>
      <rect x="5" y="12" width="11" height="2"></rect>
      <rect x="5" y="8" width="11" height="2"></rect>
      <rect x="17" y="8" width="2" height="2"></rect>
      <rect x="17" y="12" width="2" height="2"></rect></svg></md-icon>
    </md-icon-button> <!--?lit$9212114395$-->
      </div><!----><div class="left-pane-button">
        <!--?lit$9212114395$--><md-icon-button command="show-terminal" data-aria-label="Terminal" title="Terminal" tabindex="-1" value=""><template shadowrootmode="open" shadowrootdelegatesfocus><!----><button id="button" class="icon-button  standard " aria-label="Terminal">
        <!--?lit$9212114395$--><md-focus-ring part="focus-ring" for="button" aria-hidden="true"><template shadowrootmode="open"><!----></template></md-focus-ring>
        <!--?lit$9212114395$--><md-ripple aria-hidden="true"><template shadowrootmode="open"><!----><div class="surface   "></div></template></md-ripple>
        <!--?lit$9212114395$--><span class="icon"><slot></slot></span>
        <!--?lit$9212114395$-->
        <!--?lit$9212114395$--><span class="touch"></span>
        <!--?lit$9212114395$-->
  </button></template>
      <md-icon aria-hidden="true"><template shadowrootmode="open"><!----><slot></slot></template><!--?lit$9212114395$-->terminal</md-icon>
    </md-icon-button> <!--?lit$9212114395$-->
      </div></div>
      </div></colab-left-pane>
        <div class="layout vertical grow">
          <colab-notebook-toolbar id="top-toolbar" class="horizontal layout center noshrink collapsed"><!----> <!--?lit$9212114395$-->
          <colab-toolbar-button command="insert-cell-below" icon="add" id="toolbar-add-code"><template shadowrootmode="open"><!----><md-text-button id="button" data-aria-disabled="false" value="" has-icon=""><template shadowrootmode="open" shadowrootdelegatesfocus><!---->
      <!--?lit$9212114395$-->
      <div class="background"></div>
      <md-focus-ring part="focus-ring" for="button" aria-hidden="true"><template shadowrootmode="open"><!----></template></md-focus-ring>
      <md-ripple part="ripple" for="button" aria-hidden="true"><template shadowrootmode="open"><!----><div class="surface"></div></template></md-ripple>
      <!--?lit$9212114395$--><button id="button" class="button">
      <!--?lit$9212114395$-->
      <span class="touch"></span>
      <!--?lit$9212114395$--><slot name="icon"></slot>
      <span class="label"><slot></slot></span>
      <!--?lit$9212114395$-->
    
    </button>
    </template>
        <!--?lit$9212114395$--><md-icon slot="icon" aria-hidden="true"><template shadowrootmode="open"><!----><slot></slot></template><!--?lit$9212114395$-->add</md-icon>
        <span class="button-content"><slot></slot></span>
        <!--?lit$9212114395$--><span class="screenreader-only"><!--?lit$9212114395$-->Insert code cell below <!--?lit$9212114395$-->Ctrl+M B</span>
      </md-text-button>
      <!--?lit$9212114395$--> <colab-tooltip-trigger for="button" aria-hidden="true" id="tooltip" message="Insert code cell below" shortcut="Ctrl+M B"><template shadowrootmode="open"><!----><!--?lit$9212114395$--><!----><div><!--?lit$9212114395$-->Insert code cell below</div><!----><!--?--></template>
          </colab-tooltip-trigger><!--?--></template>
            <!--?lit$9212114395$-->Code
          </colab-toolbar-button>
          <colab-toolbar-button command="add-text" icon="add" id="toolbar-add-text"><template shadowrootmode="open"><!----><md-text-button id="button" data-aria-disabled="false" value="" has-icon=""><template shadowrootmode="open" shadowrootdelegatesfocus><!---->
      <!--?lit$9212114395$-->
      <div class="background"></div>
      <md-focus-ring part="focus-ring" for="button" aria-hidden="true"><template shadowrootmode="open"><!----></template></md-focus-ring>
      <md-ripple part="ripple" for="button" aria-hidden="true"><template shadowrootmode="open"><!----><div class="surface"></div></template></md-ripple>
      <!--?lit$9212114395$--><button id="button" class="button">
      <!--?lit$9212114395$-->
      <span class="touch"></span>
      <!--?lit$9212114395$--><slot name="icon"></slot>
      <span class="label"><slot></slot></span>
      <!--?lit$9212114395$-->
    
    </button>
    </template>
        <!--?lit$9212114395$--><md-icon slot="icon" aria-hidden="true"><template shadowrootmode="open"><!----><slot></slot></template><!--?lit$9212114395$-->add</md-icon>
        <span class="button-content"><slot></slot></span>
        <!--?lit$9212114395$--><span class="screenreader-only"><!--?lit$9212114395$-->Add text cell <!--?lit$9212114395$--></span>
      </md-text-button>
      <!--?lit$9212114395$--> <colab-tooltip-trigger for="button" aria-hidden="true" id="tooltip" message="Add text cell" shortcut=""><template shadowrootmode="open"><!----><!--?lit$9212114395$--><!----><div><!--?lit$9212114395$-->Add text cell</div><!----><!--?--></template>
          </colab-tooltip-trigger><!--?--></template>
            <!--?lit$9212114395$-->Text
          </colab-toolbar-button>
          <!--?lit$9212114395$-->
        
    <!--?lit$9212114395$-->
    <!--?lit$9212114395$--> <span class="expanded-options">
          <span class="colab-separator"></span>
          <colab-toolbar-button command="clone"><template shadowrootmode="open"><!----><md-text-button id="button" data-aria-disabled="false" value=""><template shadowrootmode="open" shadowrootdelegatesfocus><!---->
      <!--?lit$9212114395$-->
      <div class="background"></div>
      <md-focus-ring part="focus-ring" for="button" aria-hidden="true"><template shadowrootmode="open"><!----></template></md-focus-ring>
      <md-ripple part="ripple" for="button" aria-hidden="true"><template shadowrootmode="open"><!----><div class="surface   "></div></template></md-ripple>
      <!--?lit$9212114395$--><button id="button" class="button">
      <!--?lit$9212114395$-->
      <span class="touch"></span>
      <!--?lit$9212114395$--><slot name="icon"></slot>
      <span class="label"><slot></slot></span>
      <!--?lit$9212114395$-->
    
    </button>
    </template>
        <!--?lit$9212114395$-->
        <span class="button-content"><slot></slot></span>
        <!--?lit$9212114395$--><span class="screenreader-only"><!--?lit$9212114395$--> <!--?lit$9212114395$--></span>
      </md-text-button>
      <!--?lit$9212114395$--><!--?--></template>
            <!--?lit$9212114395$-->Copy to Drive
          </colab-toolbar-button>
        </span>
    <!--?lit$9212114395$-->
    <!--?lit$9212114395$-->
    <!--?lit$9212114395$--> <span class="collapsed-options">
          <colab-last-saved-indicator aria-live="polite" aria-atomic="true" title="You do not have permission to save this notebook. To keep your changes, make a copy of the notebook."><template shadowrootmode="open"><!----><button class=" save-message "><!--?lit$9212114395$-->Changes will not be saved</button></template></colab-last-saved-indicator>
        </span>

    <span class="flex"></span>
    <!--?lit$9212114395$--><colab-connect-warning-button><template shadowrootmode="open"><!----><!--?lit$9212114395$--><!--?--><!--?--></template></colab-connect-warning-button>
    <!--?lit$9212114395$--><!--?lit$9212114395$--><colab-connect-button><template shadowrootmode="open"><!----> <!--?lit$9212114395$--><md-icon-button id="connect-icon" class="icon-okay" data-aria-label="Focus the last run cell" value=""><template shadowrootmode="open" shadowrootdelegatesfocus><!----><button id="button" class="icon-button  standard " aria-label="Focus the last run cell">
        <!--?lit$9212114395$--><md-focus-ring part="focus-ring" for="button" aria-hidden="true"><template shadowrootmode="open"><!----></template></md-focus-ring>
        <!--?lit$9212114395$--><md-ripple aria-hidden="true"><template shadowrootmode="open"><!----><div class="surface   "></div></template></md-ripple>
        <!--?lit$9212114395$--><span class="icon"><slot></slot></span>
        <!--?lit$9212114395$-->
        <!--?lit$9212114395$--><span class="touch"></span>
        <!--?lit$9212114395$-->
  </button></template>
            <md-icon aria-hidden="true"><template shadowrootmode="open"><!----><slot></slot></template><!--?lit$9212114395$-->done</md-icon>
          </md-icon-button>
          <colab-tooltip-trigger for="connect-icon" id="connect-icon-tooltip" aria-hidden="true" message="Focus the last run cell"><template shadowrootmode="open"><!----><!--?lit$9212114395$--><!----><div><!--?lit$9212114395$-->Focus the last run cell</div><!----><!--?--></template>
          </colab-tooltip-trigger>
      <colab-toolbar-button id="connect" tooltipid="colab-connect-tooltip" tooltiptext="Connected to

          Python 3 Google Compute Engine backend

          

RAM: 1.68 GB/12.67 GB
Disk: 27.40 GB/107.72 GB"><template shadowrootmode="open"><!----><md-text-button id="button" value="" data-aria-disabled="false"><template shadowrootmode="open" shadowrootdelegatesfocus><!---->
      <!--?lit$9212114395$-->
      <div class="background"></div>
      <md-focus-ring part="focus-ring" for="button" aria-hidden="true"><template shadowrootmode="open"><!----></template></md-focus-ring>
      <md-ripple part="ripple" for="button" aria-hidden="true"><template shadowrootmode="open"><!----><div class="surface   "></div></template></md-ripple>
      <!--?lit$9212114395$--><button id="button" class="button">
      <!--?lit$9212114395$-->
      <span class="touch"></span>
      <!--?lit$9212114395$--><slot name="icon"></slot>
      <span class="label"><slot></slot></span>
      <!--?lit$9212114395$-->
    
    </button>
    </template>
        <!--?lit$9212114395$-->
        <span class="button-content"><slot></slot></span>
        <!--?lit$9212114395$--><span class="screenreader-only"><!--?lit$9212114395$-->Connected to

          Python 3 Google Compute Engine backend

          

RAM: 1.68 GB/12.67 GB
Disk: 27.40 GB/107.72 GB <!--?lit$9212114395$--></span>
      </md-text-button>
      <!--?lit$9212114395$--> <colab-tooltip-trigger for="button" aria-hidden="true" id="colab-connect-tooltip" message="Connected to

          Python 3 Google Compute Engine backend

          

RAM: 1.68 GB/12.67 GB
Disk: 27.40 GB/107.72 GB" shortcut=""><template shadowrootmode="open"><!----><!--?lit$9212114395$--><!----><div><!--?lit$9212114395$-->Connected to</div><!----><!----><div><!--?lit$9212114395$--></div><!----><!----><div><!--?lit$9212114395$-->          Python 3 Google Compute Engine backend</div><!----><!----><div><!--?lit$9212114395$--></div><!----><!----><div><!--?lit$9212114395$-->          </div><!----><!----><div><!--?lit$9212114395$--></div><!----><!----><div><!--?lit$9212114395$-->RAM: 1.68 GB/12.67 GB</div><!----><!----><div><!--?lit$9212114395$-->Disk: 27.40 GB/107.72 GB</div><!----><!--?--></template>
          </colab-tooltip-trigger><!--?--></template>
        <!--?lit$9212114395$--> <div id="connect-button-resource-display">
        <!--?lit$9212114395$--><colab-usage-sparkline class="ram" label="RAM"><template shadowrootmode="open"><!---->
      <div class="label"><!--?lit$9212114395$-->RAM</div>
      <!--?lit$9212114395$-->
      <canvas height="14" width="20"></canvas>
    </template></colab-usage-sparkline>
        <!--?lit$9212114395$--><colab-usage-sparkline class="disks" label="Disk"><template shadowrootmode="open"><!---->
      <div class="label"><!--?lit$9212114395$-->Disk</div>
      <!--?lit$9212114395$-->
      <canvas height="14" width="20"></canvas>
    </template></colab-usage-sparkline>
      </div>
      </colab-toolbar-button>
      <!--?lit$9212114395$--> <md-icon-button id="connect-dropdown" data-aria-label="Additional connection options" value=""><template shadowrootmode="open" shadowrootdelegatesfocus><!----><button id="button" class="icon-button  standard " aria-label="Additional connection options">
        <!--?lit$9212114395$--><md-focus-ring part="focus-ring" for="button" aria-hidden="true"><template shadowrootmode="open"><!----></template></md-focus-ring>
        <!--?lit$9212114395$--><md-ripple aria-hidden="true"><template shadowrootmode="open"><!----><div class="surface   "></div></template></md-ripple>
        <!--?lit$9212114395$--><span class="icon"><slot></slot></span>
        <!--?lit$9212114395$-->
        <!--?lit$9212114395$--><span class="touch"></span>
        <!--?lit$9212114395$-->
  </button></template>
        <md-icon aria-hidden="true"><template shadowrootmode="open"><!----><slot></slot></template>arrow_drop_down</md-icon>
      </md-icon-button>
      <colab-tooltip-trigger for="connect-dropdown" id="connect-dropdown-tooltip" aria-hidden="true" message="Additional connection options"><template shadowrootmode="open"><!----><!--?lit$9212114395$--><!----><div><!--?lit$9212114395$-->Additional connection options</div><!----><!--?--></template>
      </colab-tooltip-trigger><!--?--></template></colab-connect-button><!--?-->
    <!--?lit$9212114395$--> <span class="colab-separator"></span>
          <colab-toolbar-button command="show-chat" icon="spark"><template shadowrootmode="open"><!----><md-text-button id="button" data-aria-disabled="false" value="" has-icon=""><template shadowrootmode="open" shadowrootdelegatesfocus><!---->
      <!--?lit$9212114395$-->
      <div class="background"></div>
      <md-focus-ring part="focus-ring" for="button" aria-hidden="true"><template shadowrootmode="open"><!----></template></md-focus-ring>
      <md-ripple part="ripple" for="button" aria-hidden="true"><template shadowrootmode="open"><!----><div class="surface"></div></template></md-ripple>
      <!--?lit$9212114395$--><button id="button" class="button">
      <!--?lit$9212114395$-->
      <span class="touch"></span>
      <!--?lit$9212114395$--><slot name="icon"></slot>
      <span class="label"><slot></slot></span>
      <!--?lit$9212114395$-->
    
    </button>
    </template>
        <!--?lit$9212114395$--><md-icon slot="icon" aria-hidden="true"><template shadowrootmode="open"><!----><slot></slot></template><!--?lit$9212114395$-->spark</md-icon>
        <span class="button-content"><slot></slot></span>
        <!--?lit$9212114395$--><span class="screenreader-only"><!--?lit$9212114395$--> <!--?lit$9212114395$--></span>
      </md-text-button>
      <!--?lit$9212114395$--><!--?--></template>
            <!--?lit$9212114395$-->Gemini
          </colab-toolbar-button>
    <!--?lit$9212114395$-->
    <span class="collapsed-options">
      <!--?lit$9212114395$--><span class="colab-separator"></span>
      <!--?lit$9212114395$--> <md-icon-button command="share" title="Share notebook" data-aria-label="Share notebook" value=""><template shadowrootmode="open" shadowrootdelegatesfocus><!----><button id="button" class="icon-button  standard " aria-label="Share notebook">
        <!--?lit$9212114395$--><md-focus-ring part="focus-ring" for="button" aria-hidden="true"><template shadowrootmode="open"><!----></template></md-focus-ring>
        <!--?lit$9212114395$--><md-ripple aria-hidden="true"><template shadowrootmode="open"><!----><div class="surface"></div></template></md-ripple>
        <!--?lit$9212114395$--><span class="icon"><slot></slot></span>
        <!--?lit$9212114395$-->
        <!--?lit$9212114395$--><span class="touch"></span>
        <!--?lit$9212114395$-->
  </button></template>
            <md-icon filled="" aria-hidden="true"><template shadowrootmode="open"><!----><slot></slot></template><!--?lit$9212114395$-->people</md-icon>
          </md-icon-button><md-icon-button command="preferences" data-aria-label="Open settings" title="Open settings" value=""><template shadowrootmode="open" shadowrootdelegatesfocus><!----><button id="button" class="icon-button  standard " aria-label="Open settings">
        <!--?lit$9212114395$--><md-focus-ring part="focus-ring" for="button" aria-hidden="true"><template shadowrootmode="open"><!----></template></md-focus-ring>
        <!--?lit$9212114395$--><md-ripple aria-hidden="true"><template shadowrootmode="open"><!----><div class="surface   "></div></template></md-ripple>
        <!--?lit$9212114395$--><span class="icon"><slot></slot></span>
        <!--?lit$9212114395$-->
        <!--?lit$9212114395$--><span class="touch"></span>
        <!--?lit$9212114395$-->
  </button></template>
        <md-icon filled="" aria-hidden="true"><template shadowrootmode="open"><!----><slot></slot></template>settings</md-icon>
      </md-icon-button>
    </span>
    <span class="colab-separator"></span>
    <!--?lit$9212114395$--><md-icon-button toggle="" command="toggle-header" id="toggle-header-button" data-aria-label="Toggle header visibility" aria-describedby="toggle-header-button-tooltip" selected="" value=""><template shadowrootmode="open" shadowrootdelegatesfocus><!----><button id="button" class="icon-button  selected standard " aria-label="Toggle header visibility" aria-pressed="true">
        <!--?lit$9212114395$--><md-focus-ring part="focus-ring" for="button" aria-hidden="true"><template shadowrootmode="open"><!----></template></md-focus-ring>
        <!--?lit$9212114395$--><md-ripple aria-hidden="true"><template shadowrootmode="open"><!----><div class="surface"></div></template></md-ripple>
        <!--?lit$9212114395$-->
        <!--?lit$9212114395$--><span class="icon icon--selected"><slot name="selected"><slot></slot></slot></span>
        <!--?lit$9212114395$--><span class="touch"></span>
        <!--?lit$9212114395$-->
  </button></template>
    <md-icon aria-hidden="true"><template shadowrootmode="open"><!----><slot></slot></template>expand_less</md-icon>
    <md-icon slot="selected" aria-hidden="true"><template shadowrootmode="open"><!----><slot></slot></template>expand_more</md-icon>
  </md-icon-button><colab-tooltip-trigger aria-hidden="true" for="toggle-header-button" id="toggle-header-button-tooltip"><template shadowrootmode="open"><!----><!--?lit$9212114395$--><!----><div><!--?lit$9212114395$-->Toggle header visibility</div><!----><!--?--></template>
        </colab-tooltip-trigger><!--?--></colab-notebook-toolbar><colab-tab-layout-container class="layout horizontal grow flexible-tabs"><!----> <div class="layout horizontal tab-pane-parent">
      <!--?lit$9212114395$--> <div class="layout vertical tab-pane-parent">
      <!--?lit$9212114395$--><colab-tab-pane class="layout vertical grow no-header focused" align="horizontal"><!----> <div class="layout vertical grow">
    <div class="tab-pane-header layout horizontal noshrink">
      <md-tabs><template shadowrootmode="open"><!---->
      <div class="tabs">
        <slot></slot>
      </div>
      <md-divider part="divider"><template shadowrootmode="open"><!----></template></md-divider>
    </template><md-primary-tab noink="" title="" aria-labelledby="tab-title-ccbH7HWv0HjZ" class="selected-tab" tabindex="0" md-tab="" active=""><template shadowrootmode="open"><!----><div class="button" role="presentation">
      <md-focus-ring part="focus-ring" inward="" aria-hidden="true"><template shadowrootmode="open"><!----></template></md-focus-ring>
      <md-elevation part="elevation" aria-hidden="true"><template shadowrootmode="open"><!----><span class="shadow"></span></template></md-elevation>
      <md-ripple aria-hidden="true"><template shadowrootmode="open"><!----><div class="surface   "></div></template></md-ripple>
      <div role="presentation" class="content  has-label stacked ">
        <slot name="icon"></slot>
        <slot></slot>
        <!--?lit$9212114395$--><div class="indicator"></div>
      </div>
      <!--?lit$9212114395$-->
    </div></template>
          <div class="colab-tab-header">
            <span class="colab-tab-title" id="tab-title-ccbH7HWv0HjZ"><!--?lit$9212114395$--><!--?lit$9212114395$-->Notebook<!--?--></span>
            <!--?lit$9212114395$-->
          </div>
        </md-primary-tab></md-tabs>
      <div class="layout grow"></div>
      <!--?lit$9212114395$--> <md-icon-button title="Show more" data-aria-label="Show more" value=""><template shadowrootmode="open" shadowrootdelegatesfocus><!----><button id="button" class="icon-button  standard " aria-label="Show more">
        <!--?lit$9212114395$--><md-focus-ring part="focus-ring" for="button" aria-hidden="true"><template shadowrootmode="open"><!----></template></md-focus-ring>
        <!--?lit$9212114395$--><md-ripple aria-hidden="true"><template shadowrootmode="open"><!----><div class="surface   "></div></template></md-ripple>
        <!--?lit$9212114395$--><span class="icon"><slot></slot></span>
        <!--?lit$9212114395$-->
        <!--?lit$9212114395$--><span class="touch"></span>
        <!--?lit$9212114395$-->
  </button></template>
    <md-icon aria-hidden="true"><template shadowrootmode="open"><!----><slot></slot></template>more_horiz</md-icon>
  </md-icon-button>
    </div>
    <div class="layout vertical grow tab-pane-container"> <colab-tab class="layout vertical grow notebook-tab-content selected-tab"><!----> <div class="overflow-flexbox-workaround">
      <colab-shaded-scroller ignore-dom-changes="" tabindex="-1" role="main" class="notebook-container" aria-label="Notebook">
        <div class="notebook-scrolling-horizontal-container">
          <div class="notebook-scrolling-horizontal">
            <div class="notebook-content-background">
              <!--?lit$9212114395$-->
              <div class="notebook-content ">
                <!--?lit$9212114395$--><div class="add-cell">
      <div class="add-cell-buttons">
        <md-outlined-button class="add-code add-button" data-aria-label="Add code cell
Ctrl+M B" title="Add code cell
Ctrl+M B" value="" has-icon=""><template shadowrootmode="open" shadowrootdelegatesfocus><!---->
      <!--?lit$9212114395$--><div class="outline"></div>
      <div class="background"></div>
      <md-focus-ring part="focus-ring" for="button" aria-hidden="true"><template shadowrootmode="open"><!----></template></md-focus-ring>
      <md-ripple part="ripple" for="button" aria-hidden="true"><template shadowrootmode="open"><!----><div class="surface"></div></template></md-ripple>
      <!--?lit$9212114395$--><button id="button" class="button" aria-label="Add code cell
Ctrl+M B">
      <!--?lit$9212114395$-->
      <span class="touch"></span>
      <!--?lit$9212114395$--><slot name="icon"></slot>
      <span class="label"><slot></slot></span>
      <!--?lit$9212114395$-->
    
    </button>
    </template>
          <md-icon slot="icon" aria-hidden="true"><template shadowrootmode="open"><!----><slot></slot></template>add</md-icon>
          <!--?lit$9212114395$-->Code
        </md-outlined-button>
        <md-outlined-button class="add-text add-button" data-aria-label="Add text cell" title="Add text cell" value="" has-icon=""><template shadowrootmode="open" shadowrootdelegatesfocus><!---->
      <!--?lit$9212114395$--><div class="outline"></div>
      <div class="background"></div>
      <md-focus-ring part="focus-ring" for="button" aria-hidden="true"><template shadowrootmode="open"><!----></template></md-focus-ring>
      <md-ripple part="ripple" for="button" aria-hidden="true"><template shadowrootmode="open"><!----><div class="surface   "></div></template></md-ripple>
      <!--?lit$9212114395$--><button id="button" class="button" aria-label="Add text cell">
      <!--?lit$9212114395$-->
      <span class="touch"></span>
      <!--?lit$9212114395$--><slot name="icon"></slot>
      <span class="label"><slot></slot></span>
      <!--?lit$9212114395$-->
    
    </button>
    </template>
          <md-icon slot="icon" aria-hidden="true"><template shadowrootmode="open"><!----><slot></slot></template>add</md-icon>
          <!--?lit$9212114395$-->Text
        </md-outlined-button>
        <!--?lit$9212114395$-->
      </div><hr>
    </div>
                <div class="notebook-cell-list"><div class="cell code icon-scrolling" id="cell-RNqLgNrhvM77" tabindex="-1" role="region" aria-label="Cell 0: Code cell: " style=""><div class="cell-tag-editor sticky"></div><div class="cell-toolbar sticky"></div><div class="main-content" elevation="0"><div class="cell-contents"><div class="cell-mask"></div><span class="imported-info-area"></span><div class="codecell-input-output">
      <div class="inputarea horizontal layout code">
        <div class="cell-gutter">
          <!-- Bounding range for vertical scrolling of icons -->
          <div class="cell-execution-container">
            <colab-run-button title="Run cell (Ctrl+Enter)
cell executed since last change" role="button" aria-label="Run cell"><template shadowrootmode="open"><!----> <div class="cell-execution">
      <div class="execution-count"><!--?lit$9212114395$-->[1]</div>
      <div class="cell-execution-indicator"> <!--?lit$9212114395$-->
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
  <!--?lit$9212114395$-->
  <mask id="playSymbolMask">
    <rect width="100%" height="100%" fill="white"></rect>
    <polygon points="10,8 17,12 10,16" fill="black"></polygon>
  </mask>
  <circle cx="12" cy="12" r="7.8" mask="url(#playSymbolMask)" id="filledCircle"></circle>
</svg> </div>
      <!--?lit$9212114395$--><div id="status">
      <md-icon aria-hidden="true"><template shadowrootmode="open"><!----><slot></slot></template><!--?lit$9212114395$--><svg viewBox="0 0 24 24"><!--?lit$9212114395$--><path d="M9 16.17L4.83 12l-1.42 1.41L9 19 21 7l-1.41-1.41z"></path></svg></md-icon>
      <div><!--?lit$9212114395$--></div>
    </div>
    </div></template></colab-run-button>
          </div>
        </div>
      <div class="editor flex lazy-editor" style=""><div class="editor flex monaco" data-keybinding-context="1" data-mode-id="notebook-python" style="height: 200px; --vscode-editorCodeLens-lineHeight: 16px; --vscode-editorCodeLens-fontSize: 12px; --vscode-editorCodeLens-fontFeatureSettings: &quot;liga&quot; off, &quot;calt&quot; off;"><div class="monaco-editor no-user-select  showUnused showDeprecated vs" role="code" data-uri="inmemory://model/3" style="width: 1411px; height: 200px;"><div data-mprt="3" class="overflow-guard" style="width: 1411px; height: 200px; overflow: clip;"><div class="margin" role="presentation" aria-hidden="true" style="position: absolute; contain: strict; will-change: unset; top: 0px; height: 200px; width: 6px;"><div class="glyph-margin" style="left: 0px; width: 0px; height: 200px;"></div><div class="margin-view-zones" role="presentation" aria-hidden="true" style="position: absolute;"></div><div class="margin-view-overlays" role="presentation" aria-hidden="true" style="position: absolute; font-family: monospace, Consolas, &quot;Courier New&quot;, monospace; font-weight: normal; font-size: 14px; font-feature-settings: &quot;liga&quot; 0, &quot;calt&quot; 0; font-variation-settings: normal; line-height: 19px; letter-spacing: 0px; width: 6px; height: 200px;"><div style="position:absolute;top:0px;width:100%;height:19px;"></div><div style="position:absolute;top:19px;width:100%;height:19px;"></div><div style="position:absolute;top:38px;width:100%;height:19px;"></div><div style="position:absolute;top:57px;width:100%;height:19px;"></div><div style="position:absolute;top:76px;width:100%;height:19px;"></div><div style="position:absolute;top:95px;width:100%;height:19px;"></div><div style="position:absolute;top:114px;width:100%;height:19px;"><div class="current-line current-line-margin-both" style="width:6px; height:19px;"></div></div><div style="position:absolute;top:133px;width:100%;height:19px;"></div><div style="position:absolute;top:152px;width:100%;height:19px;"></div><div style="position:absolute;top:171px;width:100%;height:19px;"></div></div><div class="glyph-margin-widgets" style="position: absolute; top: 0px;"></div></div><div class="monaco-scrollable-element editor-scrollable vs" role="presentation" data-mprt="5" style="position: absolute; overflow: hidden; left: 6px; width: 1405px; height: 200px;"><div class="lines-content monaco-editor-background" style="position: absolute; overflow: hidden; width: 1e+06px; height: 200px; contain: strict; will-change: unset; top: 0px; left: 0px;"><div class="view-overlays" role="presentation" aria-hidden="true" style="position: absolute; font-family: monospace, Consolas, &quot;Courier New&quot;, monospace; font-weight: normal; font-size: 14px; font-feature-settings: &quot;liga&quot; 0, &quot;calt&quot; 0; font-variation-settings: normal; line-height: 19px; letter-spacing: 0px; height: 0px; width: 1405px;"><div style="position:absolute;top:0px;width:100%;height:19px;"></div><div style="position:absolute;top:19px;width:100%;height:19px;"></div><div style="position:absolute;top:38px;width:100%;height:19px;"></div><div style="position:absolute;top:57px;width:100%;height:19px;"></div><div style="position:absolute;top:76px;width:100%;height:19px;"></div><div style="position:absolute;top:95px;width:100%;height:19px;"></div><div style="position:absolute;top:114px;width:100%;height:19px;"><div class="current-line" style="width:1405px; height:19px;"></div><div class="cdr wordHighlightText" style="left:216px;width:23px;height:19px;"></div></div><div style="position:absolute;top:133px;width:100%;height:19px;"></div><div style="position:absolute;top:152px;width:100%;height:19px;"></div><div style="position:absolute;top:171px;width:100%;height:19px;"></div></div><div role="presentation" aria-hidden="true" class="view-rulers"><div class="view-ruler" style="width: 2px; height: 200px; left: 615.938px;"></div></div><div class="view-zones" role="presentation" aria-hidden="true" style="position: absolute;"></div><div class="view-lines monaco-mouse-cursor-text" role="presentation" aria-hidden="true" data-mprt="7" style="position: absolute; font-family: monospace, Consolas, &quot;Courier New&quot;, monospace; font-weight: normal; font-size: 14px; font-feature-settings: &quot;liga&quot; 0, &quot;calt&quot; 0; font-variation-settings: normal; line-height: 19px; letter-spacing: 0px; width: 1405px; height: 200px;"><div style="top:0px;height:19px;" class="view-line"><span><span class="mtk19">import</span><span class="mtk1">&nbsp;pandas&nbsp;</span><span class="mtk19">as</span><span class="mtk1">&nbsp;pd</span></span></div><div style="top:19px;height:19px;" class="view-line"><span><span class="mtk19">import</span><span class="mtk1">&nbsp;numpy&nbsp;</span><span class="mtk19">as</span><span class="mtk1">&nbsp;np</span></span></div><div style="top:38px;height:19px;" class="view-line"><span><span class="mtk19">import</span><span class="mtk1">&nbsp;math</span></span></div><div style="top:57px;height:19px;" class="view-line"><span><span class="mtk19">import</span><span class="mtk1">&nbsp;sklearn</span></span></div><div style="top:76px;height:19px;" class="view-line"><span><span class="mtk19">from</span><span class="mtk1">&nbsp;sklearn.model_selection&nbsp;</span><span class="mtk19">import</span><span class="mtk1">&nbsp;train_test_split</span></span></div><div style="top:95px;height:19px;" class="view-line"><span><span class="mtk19">from</span><span class="mtk1">&nbsp;sklearn.metrics&nbsp;</span><span class="mtk19">import</span><span class="mtk1">&nbsp;mean_squared_error,&nbsp;r2_score,&nbsp;mean_absolute_error</span></span></div><div style="top:114px;height:19px;" class="view-line"><span><span class="mtk19">import</span><span class="mtk1">&nbsp;matplotlib.pyplot&nbsp;</span><span class="mtk19">as</span><span class="mtk1">&nbsp;plt</span></span></div><div style="top:133px;height:19px;" class="view-line"><span><span class="mtk19">import</span><span class="mtk1">&nbsp;seaborn&nbsp;</span><span class="mtk19">as</span><span class="mtk1">&nbsp;sb</span></span></div><div style="top:152px;height:19px;" class="view-line"><span><span class="mtk19">from</span><span class="mtk1">&nbsp;sklearn&nbsp;</span><span class="mtk19">import</span><span class="mtk1">&nbsp;preprocessing</span></span></div><div style="top:171px;height:19px;" class="view-line"><span><span></span></span></div></div><div data-mprt="1" class="contentWidgets" style="position: absolute; top: 0px;"><div class="lightBulbWidget codicon codicon-light-bulb" widgetid="LightBulbWidget" title="Show Code Actions (Ctrl+.)" style="position: absolute; display: none; visibility: hidden; max-width: 1405px;"></div></div><div role="presentation" aria-hidden="true" class="cursors-layer cursor-line-style cursor-solid"><div class="cursor monaco-mouse-cursor-text " style="height: 19px; top: 114px; left: 239px; font-family: monospace, Consolas, &quot;Courier New&quot;, monospace; font-weight: normal; font-size: 14px; font-feature-settings: &quot;liga&quot; 0, &quot;calt&quot; 0; font-variation-settings: normal; line-height: 19px; letter-spacing: 0px; display: block; visibility: hidden; padding-left: 0px; width: 1.6px;"></div></div></div><div role="presentation" aria-hidden="true" class="invisible scrollbar horizontal" style="position: absolute; width: 1391px; height: 10px; left: 0px; bottom: 0px;"><div class="slider" style="position: absolute; top: 0px; left: 0px; height: 10px; transform: translate3d(0px, 0px, 0px); contain: strict; will-change: unset; width: 1391px;"></div></div><canvas class="decorationsOverviewRuler" aria-hidden="true" width="17" height="250" style="position: absolute; transform: translate3d(0px, 0px, 0px); contain: strict; top: 0px; right: 0px; width: 14px; height: 200px; will-change: unset; display: block;"></canvas><div role="presentation" aria-hidden="true" class="invisible scrollbar vertical" style="position: absolute; width: 14px; height: 200px; right: 0px; top: 0px;"><div class="slider" style="position: absolute; top: 0px; left: 0px; width: 14px; transform: translate3d(0px, 0px, 0px); contain: strict; will-change: unset; height: 200px;"></div></div></div><div role="presentation" aria-hidden="true" style="width: 1411px;"></div><textarea data-mprt="6" class="inputarea monaco-mouse-cursor-text" wrap="on" autocorrect="off" autocapitalize="off" autocomplete="off" spellcheck="false" aria-label="Editor content;Press Alt+F1 for Accessibility Options." tabindex="0" role="textbox" aria-roledescription="editor" aria-multiline="true" aria-haspopup="false" aria-autocomplete="both" style="tab-size: 15.3984px; font-family: monospace, Consolas, &quot;Courier New&quot;, monospace; font-weight: normal; font-size: 14px; font-feature-settings: &quot;liga&quot; 0, &quot;calt&quot; 0; font-variation-settings: normal; line-height: 19px; letter-spacing: 0px; top: 114px; left: 6px; width: 76992px; height: 1px;"></textarea><div class="monaco-editor-background textAreaCover" style="position: absolute; top: 0px; left: 0px; width: 0px; height: 0px;"></div><div data-mprt="4" class="overlayWidgets" style="width: 1411px;"></div><div data-mprt="8" class="minimap slider-mouseover" role="presentation" aria-hidden="true" style="position: absolute; left: 0px; width: 0px; height: 200px;"><div class="minimap-shadow-hidden" style="height: 200px;"></div><canvas width="0" height="250" style="position: absolute; left: 0px; width: 0px; height: 200px;"></canvas><canvas class="minimap-decorations-layer" width="0" height="250" style="position: absolute; left: 0px; width: 0px; height: 200px;"></canvas><div class="minimap-slider" style="position: absolute; transform: translate3d(0px, 0px, 0px); contain: strict; width: 0px; will-change: unset;"><div class="minimap-slider-horizontal" style="position: absolute; width: 0px; height: 0px;"></div></div></div><div role="presentation" aria-hidden="true" class="blockDecorations-container"></div></div><div data-mprt="2" class="overflowingContentWidgets" style="display: none;"><div widgetid="editor.contrib.resizableContentHoverWidget" style="position: fixed; height: 10px; width: 10px; z-index: 50; display: none; visibility: hidden; max-width: 1536px;"><div class="monaco-sash vertical" style="left: 8px;"></div><div class="monaco-sash vertical" style="left: -2px;"></div><div class="monaco-sash orthogonal-edge-north horizontal" style="top: -2px;"><div class="orthogonal-drag-handle start"></div><div class="orthogonal-drag-handle end"></div></div><div class="monaco-sash orthogonal-edge-south horizontal" style="top: 8px;"><div class="orthogonal-drag-handle start"></div><div class="orthogonal-drag-handle end"></div></div><div class="monaco-hover hidden" tabindex="0" role="tooltip"><div class="monaco-scrollable-element " role="presentation" style="position: relative; overflow: hidden;"><div class="monaco-hover-content" style="overflow: hidden; font-size: 14px; line-height: 1.35714; max-width: 931.26px; max-height: 250px;"></div><div role="presentation" aria-hidden="true" class="invisible scrollbar horizontal" style="position: absolute;"><div class="slider" style="position: absolute; top: 0px; left: 0px; height: 10px; transform: translate3d(0px, 0px, 0px); contain: strict;"></div></div><div role="presentation" aria-hidden="true" class="invisible scrollbar vertical" style="position: absolute;"><div class="slider" style="position: absolute; top: 0px; left: 0px; width: 10px; transform: translate3d(0px, 0px, 0px); contain: strict;"></div></div><div class="shadow"></div><div class="shadow"></div><div class="shadow"></div></div></div></div></div><div class=".in-cell-overflowing"><div widgetid="editor.contrib.quickInputWidget" style="position: absolute; top: 0px; right: 50%;"></div></div></div></div></div><colab-form class="formview vertical layout flex"><div class="widget-area vertical layout"></div></colab-form></div>
    <div class="output" aria-label="Cell 0 output" role="region"><!----> <div class="output-header"> </div>
        <div class="output-content" hidden="">
          <div class="output-info"> </div>
          <div class="output-iframe-container" hidden="">
            <div class="output-iframe-sizer"> <div><div></div></div></div>
          </div>
        </div></div></div><colab-cell-next-steps><template shadowrootmode="open"><!----></template></colab-cell-next-steps></div></div><div class="add-cell">
      <div class="add-cell-buttons">
        <md-outlined-button class="add-code add-button" data-aria-label="Add code cell
Ctrl+M B" title="Add code cell
Ctrl+M B" value="" has-icon=""><template shadowrootmode="open" shadowrootdelegatesfocus><!---->
      <!--?lit$9212114395$--><div class="outline"></div>
      <div class="background"></div>
      <md-focus-ring part="focus-ring" for="button" aria-hidden="true"><template shadowrootmode="open"><!----></template></md-focus-ring>
      <md-ripple part="ripple" for="button" aria-hidden="true"><template shadowrootmode="open"><!----><div class="surface   "></div></template></md-ripple>
      <!--?lit$9212114395$--><button id="button" class="button" aria-label="Add code cell
Ctrl+M B">
      <!--?lit$9212114395$-->
      <span class="touch"></span>
      <!--?lit$9212114395$--><slot name="icon"></slot>
      <span class="label"><slot></slot></span>
      <!--?lit$9212114395$-->
    
    </button>
    </template>
          <md-icon slot="icon" aria-hidden="true"><template shadowrootmode="open"><!----><slot></slot></template>add</md-icon>
          <!--?lit$9212114395$-->Code
        </md-outlined-button>
        <md-outlined-button class="add-text add-button" data-aria-label="Add text cell" title="Add text cell" value="" has-icon=""><template shadowrootmode="open" shadowrootdelegatesfocus><!---->
      <!--?lit$9212114395$--><div class="outline"></div>
      <div class="background"></div>
      <md-focus-ring part="focus-ring" for="button" aria-hidden="true"><template shadowrootmode="open"><!----></template></md-focus-ring>
      <md-ripple part="ripple" for="button" aria-hidden="true"><template shadowrootmode="open"><!----><div class="surface   "></div></template></md-ripple>
      <!--?lit$9212114395$--><button id="button" class="button" aria-label="Add text cell">
      <!--?lit$9212114395$-->
      <span class="touch"></span>
      <!--?lit$9212114395$--><slot name="icon"></slot>
      <span class="label"><slot></slot></span>
      <!--?lit$9212114395$-->
    
    </button>
    </template>
          <md-icon slot="icon" aria-hidden="true"><template shadowrootmode="open"><!----><slot></slot></template>add</md-icon>
          <!--?lit$9212114395$-->Text
        </md-outlined-button>
        <!--?lit$9212114395$-->
      </div><hr>
    </div></div><div class="cell code icon-scrolling" id="cell-Y_yMsbOvveiv" tabindex="-1" role="region" aria-label="Cell 1: Code cell: " style=""><div class="cell-tag-editor sticky"></div><div class="cell-toolbar sticky"></div><div class="main-content" elevation="0"><div class="cell-contents"><div class="cell-mask"></div><span class="imported-info-area"></span><div class="codecell-input-output">
      <div class="inputarea horizontal layout code">
        <div class="cell-gutter">
          <!-- Bounding range for vertical scrolling of icons -->
          <div class="cell-execution-container">
            <colab-run-button title="Run cell (Ctrl+Enter)
cell executed since last change" role="button" aria-label="Run cell"><template shadowrootmode="open"><!----> <div class="cell-execution">
      <div class="execution-count"><!--?lit$9212114395$-->[19]</div>
      <div class="cell-execution-indicator"> <!--?lit$9212114395$-->
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
  <!--?lit$9212114395$-->
  <mask id="playSymbolMask">
    <rect width="100%" height="100%" fill="white"></rect>
    <polygon points="10,8 17,12 10,16" fill="black"></polygon>
  </mask>
  <circle cx="12" cy="12" r="7.8" mask="url(#playSymbolMask)" id="filledCircle"></circle>
</svg> </div>
      <!--?lit$9212114395$--><div id="status">
      <md-icon aria-hidden="true"><template shadowrootmode="open"><!----><slot></slot></template><!--?lit$9212114395$--><svg viewBox="0 0 24 24"><!--?lit$9212114395$--><path d="M9 16.17L4.83 12l-1.42 1.41L9 19 21 7l-1.41-1.41z"></path></svg></md-icon>
      <div><!--?lit$9212114395$--></div>
    </div>
    </div></template></colab-run-button>
          </div>
        </div>
      <div class="editor flex lazy-editor" style=""><div class="editor flex monaco" data-keybinding-context="87" data-mode-id="notebook-python" style="height: 29px; --vscode-editorCodeLens-lineHeight: 16px; --vscode-editorCodeLens-fontSize: 12px; --vscode-editorCodeLens-fontFeatureSettings: &quot;liga&quot; off, &quot;calt&quot; off;"><div class="monaco-editor no-user-select  showUnused showDeprecated vs" role="code" data-uri="inmemory://model/4" style="width: 1411px; height: 29px;"><div data-mprt="3" class="overflow-guard" style="width: 1411px; height: 29px; overflow: clip;"><div class="margin" role="presentation" aria-hidden="true" style="position: absolute; contain: strict; will-change: unset; top: 0px; height: 29px; width: 6px;"><div class="glyph-margin" style="left: 0px; width: 0px; height: 29px;"></div><div class="margin-view-zones" role="presentation" aria-hidden="true" style="position: absolute;"></div><div class="margin-view-overlays" role="presentation" aria-hidden="true" style="position: absolute; font-family: monospace, Consolas, &quot;Courier New&quot;, monospace; font-weight: normal; font-size: 14px; font-feature-settings: &quot;liga&quot; 0, &quot;calt&quot; 0; font-variation-settings: normal; line-height: 19px; letter-spacing: 0px; width: 6px; height: 29px;"><div style="position:absolute;top:0px;width:100%;height:19px;"><div class="current-line current-line-margin-both" style="width:6px; height:19px;"></div></div></div><div class="glyph-margin-widgets" style="position: absolute; top: 0px;"></div></div><div class="monaco-scrollable-element editor-scrollable vs" role="presentation" data-mprt="5" style="position: absolute; overflow: hidden; left: 6px; width: 1405px; height: 29px;"><div class="lines-content monaco-editor-background" style="position: absolute; overflow: hidden; width: 1e+06px; height: 29px; contain: strict; will-change: unset; top: 0px; left: 0px;"><div class="view-overlays" role="presentation" aria-hidden="true" style="position: absolute; font-family: monospace, Consolas, &quot;Courier New&quot;, monospace; font-weight: normal; font-size: 14px; font-feature-settings: &quot;liga&quot; 0, &quot;calt&quot; 0; font-variation-settings: normal; line-height: 19px; letter-spacing: 0px; height: 0px; width: 1405px;"><div style="position:absolute;top:0px;width:100%;height:19px;"><div class="current-line" style="width:1405px; height:19px;"></div></div></div><div role="presentation" aria-hidden="true" class="view-rulers"></div><div class="view-zones" role="presentation" aria-hidden="true" style="position: absolute;"></div><div class="view-lines monaco-mouse-cursor-text" role="presentation" aria-hidden="true" data-mprt="7" style="position: absolute; font-family: monospace, Consolas, &quot;Courier New&quot;, monospace; font-weight: normal; font-size: 14px; font-feature-settings: &quot;liga&quot; 0, &quot;calt&quot; 0; font-variation-settings: normal; line-height: 19px; letter-spacing: 0px; width: 1405px; height: 29px;"><div style="top:0px;height:19px;" class="view-line"><span><span class="mtk1">data&nbsp;=&nbsp;pd.read_csv</span><span class="mtk1 bracket-highlighting-0">(</span><span class="mtk26">"rainfall.csv"</span><span class="mtk1 bracket-highlighting-0">)</span></span></div></div><div data-mprt="1" class="contentWidgets" style="position: absolute; top: 0px;"></div><div role="presentation" aria-hidden="true" class="cursors-layer cursor-line-style cursor-solid"><div class="cursor monaco-mouse-cursor-text " style="height: 19px; top: 0px; left: 0px; font-family: monospace, Consolas, &quot;Courier New&quot;, monospace; font-weight: normal; font-size: 14px; font-feature-settings: &quot;liga&quot; 0, &quot;calt&quot; 0; font-variation-settings: normal; line-height: 19px; letter-spacing: 0px; display: block; visibility: hidden; padding-left: 0px; width: 1.6px;"></div></div></div><div role="presentation" aria-hidden="true" class="invisible scrollbar horizontal" style="position: absolute; width: 1391px; height: 10px; left: 0px; bottom: 0px;"><div class="slider" style="position: absolute; top: 0px; left: 0px; height: 10px; transform: translate3d(0px, 0px, 0px); contain: strict; will-change: unset; width: 1391px;"></div></div><canvas class="decorationsOverviewRuler" aria-hidden="true" width="17" height="36" style="position: absolute; transform: translate3d(0px, 0px, 0px); contain: strict; top: 0px; right: 0px; width: 14px; height: 29px; will-change: unset; display: block;"></canvas><div role="presentation" aria-hidden="true" class="invisible scrollbar vertical" style="position: absolute; width: 14px; height: 29px; right: 0px; top: 0px;"><div class="slider" style="position: absolute; top: 0px; left: 0px; width: 14px; transform: translate3d(0px, 0px, 0px); contain: strict; will-change: unset; height: 29px;"></div></div></div><div role="presentation" aria-hidden="true" style="width: 1411px;"></div><textarea data-mprt="6" class="inputarea monaco-mouse-cursor-text" wrap="on" autocorrect="off" autocapitalize="off" autocomplete="off" spellcheck="false" aria-label="Editor content;Press Alt+F1 for Accessibility Options." tabindex="0" role="textbox" aria-roledescription="editor" aria-multiline="true" aria-haspopup="false" aria-autocomplete="both" style="tab-size: 15.3984px; font-family: monospace, Consolas, &quot;Courier New&quot;, monospace; font-weight: normal; font-size: 14px; font-feature-settings: &quot;liga&quot; 0, &quot;calt&quot; 0; font-variation-settings: normal; line-height: 19px; letter-spacing: 0px; top: 0px; left: 6px; width: 76992px; height: 1px;"></textarea><div class="monaco-editor-background textAreaCover" style="position: absolute; top: 0px; left: 0px; width: 0px; height: 0px;"></div><div data-mprt="4" class="overlayWidgets" style="width: 1411px;"><div widgetid="editor.contrib.quickInputWidget" style="position: absolute; top: 0px; right: 50%;"></div></div><div data-mprt="8" class="minimap slider-mouseover" role="presentation" aria-hidden="true" style="position: absolute; left: 0px; width: 0px; height: 29px;"><div class="minimap-shadow-hidden" style="height: 29px;"></div><canvas width="0" height="36" style="position: absolute; left: 0px; width: 0px; height: 29px;"></canvas><canvas class="minimap-decorations-layer" width="0" height="36" style="position: absolute; left: 0px; width: 0px; height: 29px;"></canvas><div class="minimap-slider" style="position: absolute; transform: translate3d(0px, 0px, 0px); contain: strict; width: 0px; will-change: unset;"><div class="minimap-slider-horizontal" style="position: absolute; width: 0px; height: 0px;"></div></div></div><div role="presentation" aria-hidden="true" class="blockDecorations-container"></div></div><div data-mprt="2" class="overflowingContentWidgets"><div widgetid="editor.contrib.resizableContentHoverWidget" style="position: fixed; height: 10px; width: 10px; z-index: 50; display: none; visibility: hidden; max-width: 1536px;"><div class="monaco-sash vertical" style="left: 8px;"></div><div class="monaco-sash vertical" style="left: -2px;"></div><div class="monaco-sash orthogonal-edge-north horizontal" style="top: -2px;"><div class="orthogonal-drag-handle start"></div><div class="orthogonal-drag-handle end"></div></div><div class="monaco-sash orthogonal-edge-south horizontal" style="top: 8px;"><div class="orthogonal-drag-handle start"></div><div class="orthogonal-drag-handle end"></div></div><div class="monaco-hover hidden" tabindex="0" role="tooltip"><div class="monaco-scrollable-element " role="presentation" style="position: relative; overflow: hidden;"><div class="monaco-hover-content" style="overflow: hidden; font-size: 14px; line-height: 1.35714; max-width: 931.26px; max-height: 250px;"></div><div role="presentation" aria-hidden="true" class="invisible scrollbar horizontal" style="position: absolute;"><div class="slider" style="position: absolute; top: 0px; left: 0px; height: 10px; transform: translate3d(0px, 0px, 0px); contain: strict;"></div></div><div role="presentation" aria-hidden="true" class="invisible scrollbar vertical" style="position: absolute;"><div class="slider" style="position: absolute; top: 0px; left: 0px; width: 10px; transform: translate3d(0px, 0px, 0px); contain: strict;"></div></div><div class="shadow"></div><div class="shadow"></div><div class="shadow"></div></div></div></div></div><div class=".in-cell-overflowing"></div></div></div></div><colab-form class="formview vertical layout flex"><div class="widget-area vertical layout"></div></colab-form></div>
    <div class="output" aria-label="Cell 1 output" role="region"><!----> <div class="output-header"> </div>
        <div class="output-content" hidden="">
          <div class="output-info"> </div>
          <div class="output-iframe-container" hidden="">
            <div class="output-iframe-sizer"> </div>
          </div>
        </div></div></div><colab-cell-next-steps><template shadowrootmode="open"><!----></template></colab-cell-next-steps></div></div><div class="add-cell">
      <div class="add-cell-buttons">
        <md-outlined-button class="add-code add-button" data-aria-label="Add code cell
Ctrl+M B" title="Add code cell
Ctrl+M B" value="" has-icon=""><template shadowrootmode="open" shadowrootdelegatesfocus><!---->
      <!--?lit$9212114395$--><div class="outline"></div>
      <div class="background"></div>
      <md-focus-ring part="focus-ring" for="button" aria-hidden="true"><template shadowrootmode="open"><!----></template></md-focus-ring>
      <md-ripple part="ripple" for="button" aria-hidden="true"><template shadowrootmode="open"><!----><div class="surface   "></div></template></md-ripple>
      <!--?lit$9212114395$--><button id="button" class="button" aria-label="Add code cell
Ctrl+M B">
      <!--?lit$9212114395$-->
      <span class="touch"></span>
      <!--?lit$9212114395$--><slot name="icon"></slot>
      <span class="label"><slot></slot></span>
      <!--?lit$9212114395$-->
    
    </button>
    </template>
          <md-icon slot="icon" aria-hidden="true"><template shadowrootmode="open"><!----><slot></slot></template>add</md-icon>
          <!--?lit$9212114395$-->Code
        </md-outlined-button>
        <md-outlined-button class="add-text add-button" data-aria-label="Add text cell" title="Add text cell" value="" has-icon=""><template shadowrootmode="open" shadowrootdelegatesfocus><!---->
      <!--?lit$9212114395$--><div class="outline"></div>
      <div class="background"></div>
      <md-focus-ring part="focus-ring" for="button" aria-hidden="true"><template shadowrootmode="open"><!----></template></md-focus-ring>
      <md-ripple part="ripple" for="button" aria-hidden="true"><template shadowrootmode="open"><!----><div class="surface   "></div></template></md-ripple>
      <!--?lit$9212114395$--><button id="button" class="button" aria-label="Add text cell">
      <!--?lit$9212114395$-->
      <span class="touch"></span>
      <!--?lit$9212114395$--><slot name="icon"></slot>
      <span class="label"><slot></slot></span>
      <!--?lit$9212114395$-->
    
    </button>
    </template>
          <md-icon slot="icon" aria-hidden="true"><template shadowrootmode="open"><!----><slot></slot></template>add</md-icon>
          <!--?lit$9212114395$-->Text
        </md-outlined-button>
        <!--?lit$9212114395$-->
      </div><hr>
    </div></div><div class="cell text focused" id="cell-o1saBp21z1AD" tabindex="-1" role="region" aria-label="Cell 2: Text cell: New Section" style=""><div class="cell-tag-editor sticky"></div><div class="cell-toolbar sticky"><colab-cell-toolbar><template shadowrootmode="open"><!----><!--?lit$9212114395$--><!----> <md-icon-button class="colab-icon" title="Move cell up
Ctrl+M K" data-aria-label="Move cell up
Ctrl+M K" command="move-cell-up" value=""><template shadowrootmode="open" shadowrootdelegatesfocus><!----><button id="button" class="icon-button  standard " aria-label="Move cell up
Ctrl+M K">
        <!--?lit$9212114395$--><md-focus-ring part="focus-ring" for="button" aria-hidden="true"><template shadowrootmode="open"><!----></template></md-focus-ring>
        <!--?lit$9212114395$--><md-ripple aria-hidden="true"><template shadowrootmode="open"><!----><div class="surface   "></div></template></md-ripple>
        <!--?lit$9212114395$--><span class="icon"><slot></slot></span>
        <!--?lit$9212114395$-->
        <!--?lit$9212114395$--><span class="touch"></span>
        <!--?lit$9212114395$-->
  </button></template>
          <md-icon aria-hidden="true"><template shadowrootmode="open"><!----><slot></slot></template><!--?lit$9212114395$-->arrow_upward</md-icon>
          <!--?lit$9212114395$-->
        </md-icon-button><!----><!----> <md-icon-button class="colab-icon" title="Move cell down
Ctrl+M J" data-aria-label="Move cell down
Ctrl+M J" command="move-cell-down" value=""><template shadowrootmode="open" shadowrootdelegatesfocus><!----><button id="button" class="icon-button  standard " aria-label="Move cell down
Ctrl+M J">
        <!--?lit$9212114395$--><md-focus-ring part="focus-ring" for="button" aria-hidden="true"><template shadowrootmode="open"><!----></template></md-focus-ring>
        <!--?lit$9212114395$--><md-ripple aria-hidden="true"><template shadowrootmode="open"><!----><div class="surface   "></div></template></md-ripple>
        <!--?lit$9212114395$--><span class="icon"><slot></slot></span>
        <!--?lit$9212114395$-->
        <!--?lit$9212114395$--><span class="touch"></span>
        <!--?lit$9212114395$-->
  </button></template>
          <md-icon aria-hidden="true"><template shadowrootmode="open"><!----><slot></slot></template><!--?lit$9212114395$-->arrow_downward</md-icon>
          <!--?lit$9212114395$-->
        </md-icon-button><!----><!----> <md-icon-button class="colab-icon" title="Copy link to cell" data-aria-label="Copy link to cell" command="copy-link-to-cell" value=""><template shadowrootmode="open" shadowrootdelegatesfocus><!----><button id="button" class="icon-button  standard " aria-label="Copy link to cell">
        <!--?lit$9212114395$--><md-focus-ring part="focus-ring" for="button" aria-hidden="true"><template shadowrootmode="open"><!----></template></md-focus-ring>
        <!--?lit$9212114395$--><md-ripple aria-hidden="true"><template shadowrootmode="open"><!----><div class="surface   "></div></template></md-ripple>
        <!--?lit$9212114395$--><span class="icon"><slot></slot></span>
        <!--?lit$9212114395$-->
        <!--?lit$9212114395$--><span class="touch"></span>
        <!--?lit$9212114395$-->
  </button></template>
          <md-icon aria-hidden="true"><template shadowrootmode="open"><!----><slot></slot></template><!--?lit$9212114395$-->link</md-icon>
          <!--?lit$9212114395$-->
        </md-icon-button><!----><!----> <md-icon-button class="colab-icon" title="Add a comment
Ctrl+Alt+M" data-aria-label="Add a comment
Ctrl+Alt+M" command="add-comment" value=""><template shadowrootmode="open" shadowrootdelegatesfocus><!----><button id="button" class="icon-button  standard " aria-label="Add a comment
Ctrl+Alt+M">
        <!--?lit$9212114395$--><md-focus-ring part="focus-ring" for="button" aria-hidden="true"><template shadowrootmode="open"><!----></template></md-focus-ring>
        <!--?lit$9212114395$--><md-ripple aria-hidden="true"><template shadowrootmode="open"><!----><div class="surface   "></div></template></md-ripple>
        <!--?lit$9212114395$--><span class="icon"><slot></slot></span>
        <!--?lit$9212114395$-->
        <!--?lit$9212114395$--><span class="touch"></span>
        <!--?lit$9212114395$-->
  </button></template>
          <md-icon aria-hidden="true"><template shadowrootmode="open"><!----><slot></slot></template><!--?lit$9212114395$-->comment</md-icon>
          <!--?lit$9212114395$-->
        </md-icon-button><!----><!----> <md-icon-button class="colab-icon" title="Open editor settings" data-aria-label="Open editor settings" command="editor-preferences" style="display: none;" value=""><template shadowrootmode="open" shadowrootdelegatesfocus><!----><button id="button" class="icon-button  standard " aria-label="Open editor settings">
        <!--?lit$9212114395$--><md-focus-ring part="focus-ring" for="button" aria-hidden="true"><template shadowrootmode="open"><!----></template></md-focus-ring>
        <!--?lit$9212114395$--><md-ripple aria-hidden="true"><template shadowrootmode="open"><!----><div class="surface   "></div></template></md-ripple>
        <!--?lit$9212114395$--><span class="icon"><slot></slot></span>
        <!--?lit$9212114395$-->
        <!--?lit$9212114395$--><span class="touch"></span>
        <!--?lit$9212114395$-->
  </button></template>
          <md-icon filled="" aria-hidden="true"><template shadowrootmode="open"><!----><slot></slot></template><!--?lit$9212114395$-->settings</md-icon>
          <!--?lit$9212114395$-->
        </md-icon-button><!----><!----> <md-icon-button class="colab-icon" title="Edit" command="toggle-edit-markdown" toggle="" data-aria-label="Edit" value=""><template shadowrootmode="open" shadowrootdelegatesfocus><!----><button id="button" class="icon-button  standard " aria-label="Edit" aria-pressed="false">
        <!--?lit$9212114395$--><md-focus-ring part="focus-ring" for="button" aria-hidden="true"><template shadowrootmode="open"><!----></template></md-focus-ring>
        <!--?lit$9212114395$--><md-ripple aria-hidden="true"><template shadowrootmode="open"><!----><div class="surface   "></div></template></md-ripple>
        <!--?lit$9212114395$--><span class="icon"><slot></slot></span>
        <!--?lit$9212114395$-->
        <!--?lit$9212114395$--><span class="touch"></span>
        <!--?lit$9212114395$-->
  </button></template>
          <md-icon aria-hidden="true"><template shadowrootmode="open"><!----><slot></slot></template><!--?lit$9212114395$-->edit</md-icon>
          <!--?lit$9212114395$--><md-icon slot="selected" aria-hidden="true"><template shadowrootmode="open"><!----><slot></slot></template><!--?lit$9212114395$-->edit_off</md-icon>
        </md-icon-button><!----><!----> <md-icon-button class="colab-icon" title="Mirror cell in tab" data-aria-label="Mirror cell in tab" command="mirror-cell-in-tab" value=""><template shadowrootmode="open" shadowrootdelegatesfocus><!----><button id="button" class="icon-button  standard " aria-label="Mirror cell in tab">
        <!--?lit$9212114395$--><md-focus-ring part="focus-ring" for="button" aria-hidden="true"><template shadowrootmode="open"><!----></template></md-focus-ring>
        <!--?lit$9212114395$--><md-ripple aria-hidden="true"><template shadowrootmode="open"><!----><div class="surface   "></div></template></md-ripple>
        <!--?lit$9212114395$--><span class="icon"><slot></slot></span>
        <!--?lit$9212114395$-->
        <!--?lit$9212114395$--><span class="touch"></span>
        <!--?lit$9212114395$-->
  </button></template>
          <md-icon aria-hidden="true"><template shadowrootmode="open"><!----><slot></slot></template><!--?lit$9212114395$--><svg viewBox="0 0 24 24"><!--?lit$9212114395$-->
      <g id="mirror-cell">
        <path d="M4,21V7H2V21a2,2,0,0,0,2,2H18V21Z"></path>
        <path d="M6,13v2H8.6L5,18.6,6.4,20,10,16.4V19h2V13Z"></path>
        <path d="M19,1H8A2,2,0,0,0,6,3v8H8V3H19V17H14v2h5a2,2,0,0,0,2-2V3A2,2,0,0,0,19,1Z"></path>
      </g></svg></md-icon>
          <!--?lit$9212114395$-->
        </md-icon-button><!----><!----> <md-icon-button class="colab-icon" title="Delete cell
Ctrl+M D" data-aria-label="Delete cell
Ctrl+M D" command="delete-cell-or-selection" value=""><template shadowrootmode="open" shadowrootdelegatesfocus><!----><button id="button" class="icon-button  standard " aria-label="Delete cell
Ctrl+M D">
        <!--?lit$9212114395$--><md-focus-ring part="focus-ring" for="button" aria-hidden="true"><template shadowrootmode="open"><!----></template></md-focus-ring>
        <!--?lit$9212114395$--><md-ripple aria-hidden="true"><template shadowrootmode="open"><!----><div class="surface   "></div></template></md-ripple>
        <!--?lit$9212114395$--><span class="icon"><slot></slot></span>
        <!--?lit$9212114395$-->
        <!--?lit$9212114395$--><span class="touch"></span>
        <!--?lit$9212114395$-->
  </button></template>
          <md-icon aria-hidden="true"><template shadowrootmode="open"><!----><slot></slot></template><!--?lit$9212114395$-->delete</md-icon>
          <!--?lit$9212114395$-->
        </md-icon-button><!----><!--?lit$9212114395$--><md-icon-button title="More cell actions" data-aria-label="More cell actions" class="colab-icon cell-toolbar-more" value=""><template shadowrootmode="open" shadowrootdelegatesfocus><!----><button id="button" class="icon-button  standard " aria-label="More cell actions">
        <!--?lit$9212114395$--><md-focus-ring part="focus-ring" for="button" aria-hidden="true"><template shadowrootmode="open"><!----></template></md-focus-ring>
        <!--?lit$9212114395$--><md-ripple aria-hidden="true"><template shadowrootmode="open"><!----><div class="surface   "></div></template></md-ripple>
        <!--?lit$9212114395$--><span class="icon"><slot></slot></span>
        <!--?lit$9212114395$-->
        <!--?lit$9212114395$--><span class="touch"></span>
        <!--?lit$9212114395$-->
  </button></template><md-icon aria-hidden="true"><template shadowrootmode="open"><!----><slot></slot></template>more_vert</md-icon>
    </md-icon-button><!--?--></template></colab-cell-toolbar></div><div class="main-content" elevation="2"><div class="cell-contents"><div class="cell-mask"></div><span class="imported-info-area"></span><!----> <div class="toolbar-root"></div>
      <div class="editor-container horizontal">
        <div class="editor-root"></div>
        <div class="text-top-div">
          <div class="markdown"><span><div class="text-cell-section-header layout horizontal center"><md-icon-button class="header-section-toggle" title="Collapse 19 child cells under New Section (Press &lt;Shift&gt; to also collapse sibling sections)" data-aria-label="Collapse 19 child cells under New Section (Press &lt;Shift&gt; to also collapse sibling sections)" value=""><template shadowrootmode="open" shadowrootdelegatesfocus><!----><button id="button" class="icon-button  standard " aria-label="Collapse 19 child cells under New Section (Press &lt;Shift&gt; to also collapse sibling sections)">
        <!--?lit$9212114395$--><md-focus-ring part="focus-ring" for="button" aria-hidden="true"><template shadowrootmode="open"><!----></template></md-focus-ring>
        <!--?lit$9212114395$--><md-ripple aria-hidden="true"><template shadowrootmode="open"><!----><div class="surface   "></div></template></md-ripple>
        <!--?lit$9212114395$--><span class="icon"><slot></slot></span>
        <!--?lit$9212114395$-->
        <!--?lit$9212114395$--><span class="touch"></span>
        <!--?lit$9212114395$-->
  </button></template><md-icon aria-hidden="true"><template shadowrootmode="open"><!----><slot></slot></template>keyboard_arrow_down</md-icon></md-icon-button><h1>New Section</h1></div>
</span></div>
        </div>
      </div>

      <div class="section-header" style="display: none;">
        <colab-run-button role="button" aria-label="Run cell"><template shadowrootmode="open"><!----> <div class="cell-execution focused">
      <div class="execution-count"><!--?lit$9212114395$-->[ ]</div>
      <div class="cell-execution-indicator"> <!--?lit$9212114395$-->
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
  <!--?lit$9212114395$-->
  <mask id="playSymbolMask">
    <rect width="100%" height="100%" fill="white"></rect>
    <polygon points="10,8 17,12 10,16" fill="black"></polygon>
  </mask>
  <circle cx="12" cy="12" r="7.8" mask="url(#playSymbolMask)" id="filledCircle"></circle>
</svg> </div>
      <!--?lit$9212114395$--><!--?-->
    </div></template></colab-run-button>
        <div class="section-header-container" title="click to expand">↳ 19 cells hidden</div>
      </div></div></div><div class="add-cell">
      <div class="add-cell-buttons">
        <md-outlined-button class="add-code add-button" data-aria-label="Add code cell
Ctrl+M B" title="Add code cell
Ctrl+M B" value="" has-icon=""><template shadowrootmode="open" shadowrootdelegatesfocus><!---->
      <!--?lit$9212114395$--><div class="outline"></div>
      <div class="background"></div>
      <md-focus-ring part="focus-ring" for="button" aria-hidden="true"><template shadowrootmode="open"><!----></template></md-focus-ring>
      <md-ripple part="ripple" for="button" aria-hidden="true"><template shadowrootmode="open"><!----><div class="surface   "></div></template></md-ripple>
      <!--?lit$9212114395$--><button id="button" class="button" aria-label="Add code cell
Ctrl+M B">
      <!--?lit$9212114395$-->
      <span class="touch"></span>
      <!--?lit$9212114395$--><slot name="icon"></slot>
      <span class="label"><slot></slot></span>
      <!--?lit$9212114395$-->
    
    </button>
    </template>
          <md-icon slot="icon" aria-hidden="true"><template shadowrootmode="open"><!----><slot></slot></template>add</md-icon>
          <!--?lit$9212114395$-->Code
        </md-outlined-button>
        <md-outlined-button class="add-text add-button" data-aria-label="Add text cell" title="Add text cell" value="" has-icon=""><template shadowrootmode="open" shadowrootdelegatesfocus><!---->
      <!--?lit$9212114395$--><div class="outline"></div>
      <div class="background"></div>
      <md-focus-ring part="focus-ring" for="button" aria-hidden="true"><template shadowrootmode="open"><!----></template></md-focus-ring>
      <md-ripple part="ripple" for="button" aria-hidden="true"><template shadowrootmode="open"><!----><div class="surface   "></div></template></md-ripple>
      <!--?lit$9212114395$--><button id="button" class="button" aria-label="Add text cell">
      <!--?lit$9212114395$-->
      <span class="touch"></span>
      <!--?lit$9212114395$--><slot name="icon"></slot>
      <span class="label"><slot></slot></span>
      <!--?lit$9212114395$-->
    
    </button>
    </template>
          <md-icon slot="icon" aria-hidden="true"><template shadowrootmode="open"><!----><slot></slot></template>add</md-icon>
          <!--?lit$9212114395$-->Text
        </md-outlined-button>
        <!--?lit$9212114395$-->
      </div><hr>
    </div></div><div class="cell code icon-scrolling" id="cell-JZMA_3JEz5eb" tabindex="-1" role="region" aria-label="Cell 3: Code cell: " style=""><div class="cell-tag-editor sticky"></div><div class="cell-toolbar sticky"></div><div class="main-content" elevation="0"><div class="cell-contents"><div class="cell-mask"></div><span class="imported-info-area"></span><div class="codecell-input-output">
      <div class="inputarea horizontal layout code">
        <div class="cell-gutter">
          <!-- Bounding range for vertical scrolling of icons -->
          <div class="cell-execution-container">
            <colab-run-button title="Run cell (Ctrl+Enter)
cell has not been executed in this session" role="button" aria-label="Run cell"><template shadowrootmode="open"><!----> <div class="cell-execution stale">
      <div class="execution-count"><!--?lit$9212114395$-->[ ]</div>
      <div class="cell-execution-indicator"> <!--?lit$9212114395$-->
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
  <!--?lit$9212114395$-->
  <mask id="playSymbolMask">
    <rect width="100%" height="100%" fill="white"></rect>
    <polygon points="10,8 17,12 10,16" fill="black"></polygon>
  </mask>
  <circle cx="12" cy="12" r="7.8" mask="url(#playSymbolMask)" id="filledCircle"></circle>
</svg> </div>
      <!--?lit$9212114395$--><!--?-->
    </div></template></colab-run-button>
          </div>
        </div>
      <div class="editor flex lazy-editor" style=""><div class="editor flex monaco" data-keybinding-context="86" data-mode-id="notebook-python" style="height: 29px; --vscode-editorCodeLens-lineHeight: 16px; --vscode-editorCodeLens-fontSize: 12px; --vscode-editorCodeLens-fontFeatureSettings: &quot;liga&quot; off, &quot;calt&quot; off;"><div class="monaco-editor no-user-select  showUnused showDeprecated vs" role="code" data-uri="inmemory://model/6" style="width: 1411px; height: 29px;"><div data-mprt="3" class="overflow-guard" style="width: 1411px; height: 29px; overflow: clip;"><div class="margin" role="presentation" aria-hidden="true" style="position: absolute; contain: strict; will-change: unset; top: 0px; height: 29px; width: 6px;"><div class="glyph-margin" style="left: 0px; width: 0px; height: 29px;"></div><div class="margin-view-zones" role="presentation" aria-hidden="true" style="position: absolute;"></div><div class="margin-view-overlays" role="presentation" aria-hidden="true" style="position: absolute; font-family: monospace, Consolas, &quot;Courier New&quot;, monospace; font-weight: normal; font-size: 14px; font-feature-settings: &quot;liga&quot; 0, &quot;calt&quot; 0; font-variation-settings: normal; line-height: 19px; letter-spacing: 0px; width: 6px; height: 29px;"><div style="position:absolute;top:0px;width:100%;height:19px;"><div class="current-line current-line-margin-both" style="width:6px; height:19px;"></div></div></div><div class="glyph-margin-widgets" style="position: absolute; top: 0px;"></div></div><div class="monaco-scrollable-element editor-scrollable vs" role="presentation" data-mprt="5" style="position: absolute; overflow: hidden; left: 6px; width: 1405px; height: 29px;"><div class="lines-content monaco-editor-background" style="position: absolute; overflow: hidden; width: 1e+06px; height: 29px; contain: strict; will-change: unset; top: 0px; left: 0px;"><div class="view-overlays" role="presentation" aria-hidden="true" style="position: absolute; font-family: monospace, Consolas, &quot;Courier New&quot;, monospace; font-weight: normal; font-size: 14px; font-feature-settings: &quot;liga&quot; 0, &quot;calt&quot; 0; font-variation-settings: normal; line-height: 19px; letter-spacing: 0px; height: 0px; width: 1405px;"><div style="position:absolute;top:0px;width:100%;height:19px;"><div class="current-line" style="width:1405px; height:19px;"></div></div></div><div role="presentation" aria-hidden="true" class="view-rulers"></div><div class="view-zones" role="presentation" aria-hidden="true" style="position: absolute;"></div><div class="view-lines monaco-mouse-cursor-text" role="presentation" aria-hidden="true" data-mprt="7" style="position: absolute; font-family: monospace, Consolas, &quot;Courier New&quot;, monospace; font-weight: normal; font-size: 14px; font-feature-settings: &quot;liga&quot; 0, &quot;calt&quot; 0; font-variation-settings: normal; line-height: 19px; letter-spacing: 0px; width: 1405px; height: 29px;"><div style="top:0px;height:19px;" class="view-line"><span><span></span></span></div></div><div data-mprt="1" class="contentWidgets" style="position: absolute; top: 0px;"><colab-cell-placeholder widgetid="editor.widget.cellPlaceholderHint" monaco-visible-content-widget="true" style="font-family: monospace, Consolas, &quot;Courier New&quot;, monospace; font-weight: normal; font-size: 14px; font-feature-settings: &quot;liga&quot; 0, &quot;calt&quot; 0; font-variation-settings: normal; line-height: 19px; letter-spacing: 0px; position: absolute; display: block; visibility: inherit; max-width: 1405px; top: 0px; left: 0px;"><template shadowrootmode="open"><!----><div><!--?lit$9212114395$-->Start coding or <span tabindex="0" role="button" class="link">generate</span> with AI.</div></template></colab-cell-placeholder></div><div role="presentation" aria-hidden="true" class="cursors-layer cursor-line-style cursor-solid"><div class="cursor monaco-mouse-cursor-text " style="height: 19px; top: 0px; left: 0px; font-family: monospace, Consolas, &quot;Courier New&quot;, monospace; font-weight: normal; font-size: 14px; font-feature-settings: &quot;liga&quot; 0, &quot;calt&quot; 0; font-variation-settings: normal; line-height: 19px; letter-spacing: 0px; display: block; visibility: hidden; padding-left: 0px; width: 1.6px;"></div></div></div><div role="presentation" aria-hidden="true" class="invisible scrollbar horizontal" style="position: absolute; width: 1391px; height: 10px; left: 0px; bottom: 0px;"><div class="slider" style="position: absolute; top: 0px; left: 0px; height: 10px; transform: translate3d(0px, 0px, 0px); contain: strict; will-change: unset; width: 1391px;"></div></div><canvas class="decorationsOverviewRuler" aria-hidden="true" width="17" height="36" style="position: absolute; transform: translate3d(0px, 0px, 0px); contain: strict; top: 0px; right: 0px; width: 14px; height: 29px; will-change: unset; display: block;"></canvas><div role="presentation" aria-hidden="true" class="invisible scrollbar vertical" style="position: absolute; width: 14px; height: 29px; right: 0px; top: 0px;"><div class="slider" style="position: absolute; top: 0px; left: 0px; width: 14px; transform: translate3d(0px, 0px, 0px); contain: strict; will-change: unset; height: 29px;"></div></div></div><div role="presentation" aria-hidden="true" style="width: 1411px;"></div><textarea data-mprt="6" class="inputarea monaco-mouse-cursor-text" wrap="on" autocorrect="off" autocapitalize="off" autocomplete="off" spellcheck="false" aria-label="Editor content;Press Alt+F1 for Accessibility Options." tabindex="0" role="textbox" aria-roledescription="editor" aria-multiline="true" aria-haspopup="false" aria-autocomplete="both" style="tab-size: 15.3984px; font-family: monospace, Consolas, &quot;Courier New&quot;, monospace; font-weight: normal; font-size: 14px; font-feature-settings: &quot;liga&quot; 0, &quot;calt&quot; 0; font-variation-settings: normal; line-height: 19px; letter-spacing: 0px; top: 0px; left: 6px; width: 76992px; height: 1px;"></textarea><div class="monaco-editor-background textAreaCover" style="position: absolute; top: 0px; left: 0px; width: 0px; height: 0px;"></div><div data-mprt="4" class="overlayWidgets" style="width: 1411px;"><div widgetid="editor.contrib.quickInputWidget" style="position: absolute; top: 0px; right: 50%;"></div></div><div data-mprt="8" class="minimap slider-mouseover" role="presentation" aria-hidden="true" style="position: absolute; left: 0px; width: 0px; height: 29px;"><div class="minimap-shadow-hidden" style="height: 29px;"></div><canvas width="0" height="36" style="position: absolute; left: 0px; width: 0px; height: 29px;"></canvas><canvas class="minimap-decorations-layer" width="0" height="36" style="position: absolute; left: 0px; width: 0px; height: 29px;"></canvas><div class="minimap-slider" style="position: absolute; transform: translate3d(0px, 0px, 0px); contain: strict; width: 0px; will-change: unset;"><div class="minimap-slider-horizontal" style="position: absolute; width: 0px; height: 0px;"></div></div></div><div role="presentation" aria-hidden="true" class="blockDecorations-container"></div></div><div data-mprt="2" class="overflowingContentWidgets"><div widgetid="editor.contrib.resizableContentHoverWidget" style="position: fixed; height: 10px; width: 10px; z-index: 50; display: none; visibility: hidden; max-width: 1536px;"><div class="monaco-sash vertical" style="left: 8px;"></div><div class="monaco-sash vertical" style="left: -2px;"></div><div class="monaco-sash orthogonal-edge-north horizontal" style="top: -2px;"><div class="orthogonal-drag-handle start"></div><div class="orthogonal-drag-handle end"></div></div><div class="monaco-sash orthogonal-edge-south horizontal" style="top: 8px;"><div class="orthogonal-drag-handle start"></div><div class="orthogonal-drag-handle end"></div></div><div class="monaco-hover hidden" tabindex="0" role="tooltip"><div class="monaco-scrollable-element " role="presentation" style="position: relative; overflow: hidden;"><div class="monaco-hover-content" style="overflow: hidden; font-size: 14px; line-height: 1.35714; max-width: 931.26px; max-height: 250px;"></div><div role="presentation" aria-hidden="true" class="invisible scrollbar horizontal" style="position: absolute;"><div class="slider" style="position: absolute; top: 0px; left: 0px; height: 10px; transform: translate3d(0px, 0px, 0px); contain: strict;"></div></div><div role="presentation" aria-hidden="true" class="invisible scrollbar vertical" style="position: absolute;"><div class="slider" style="position: absolute; top: 0px; left: 0px; width: 10px; transform: translate3d(0px, 0px, 0px); contain: strict;"></div></div><div class="shadow"></div><div class="shadow"></div><div class="shadow"></div></div></div></div></div><div class=".in-cell-overflowing"></div></div></div></div><colab-form class="formview vertical layout flex"><div class="widget-area vertical layout"></div></colab-form></div>
    <div class="output" aria-label="Cell 3 output" role="region"><!----> <div class="output-header"> </div>
        <div class="output-content" hidden="">
          <div class="output-info"> </div>
          <div class="output-iframe-container" hidden="">
            <div class="output-iframe-sizer"> </div>
          </div>
        </div></div></div><colab-cell-next-steps><template shadowrootmode="open"><!----></template></colab-cell-next-steps></div></div><div class="add-cell">
      <div class="add-cell-buttons">
        <md-outlined-button class="add-code add-button" data-aria-label="Add code cell
Ctrl+M B" title="Add code cell
Ctrl+M B" value="" has-icon=""><template shadowrootmode="open" shadowrootdelegatesfocus><!---->
      <!--?lit$9212114395$--><div class="outline"></div>
      <div class="background"></div>
      <md-focus-ring part="focus-ring" for="button" aria-hidden="true"><template shadowrootmode="open"><!----></template></md-focus-ring>
      <md-ripple part="ripple" for="button" aria-hidden="true"><template shadowrootmode="open"><!----><div class="surface   "></div></template></md-ripple>
      <!--?lit$9212114395$--><button id="button" class="button" aria-label="Add code cell
Ctrl+M B">
      <!--?lit$9212114395$-->
      <span class="touch"></span>
      <!--?lit$9212114395$--><slot name="icon"></slot>
      <span class="label"><slot></slot></span>
      <!--?lit$9212114395$-->
    
    </button>
    </template>
          <md-icon slot="icon" aria-hidden="true"><template shadowrootmode="open"><!----><slot></slot></template>add</md-icon>
          <!--?lit$9212114395$-->Code
        </md-outlined-button>
        <md-outlined-button class="add-text add-button" data-aria-label="Add text cell" title="Add text cell" value="" has-icon=""><template shadowrootmode="open" shadowrootdelegatesfocus><!---->
      <!--?lit$9212114395$--><div class="outline"></div>
      <div class="background"></div>
      <md-focus-ring part="focus-ring" for="button" aria-hidden="true"><template shadowrootmode="open"><!----></template></md-focus-ring>
      <md-ripple part="ripple" for="button" aria-hidden="true"><template shadowrootmode="open"><!----><div class="surface   "></div></template></md-ripple>
      <!--?lit$9212114395$--><button id="button" class="button" aria-label="Add text cell">
      <!--?lit$9212114395$-->
      <span class="touch"></span>
      <!--?lit$9212114395$--><slot name="icon"></slot>
      <span class="label"><slot></slot></span>
      <!--?lit$9212114395$-->
    
    </button>
    </template>
          <md-icon slot="icon" aria-hidden="true"><template shadowrootmode="open"><!----><slot></slot></template>add</md-icon>
          <!--?lit$9212114395$-->Text
        </md-outlined-button>
        <!--?lit$9212114395$-->
      </div><hr>
    </div></div><div class="cell code code-has-output icon-scrolling" id="cell-68TUDFXDvqrr" tabindex="-1" role="region" aria-label="Cell 4: Code cell: " style=""><div class="cell-tag-editor sticky"></div><div class="cell-toolbar sticky"></div><div class="main-content" elevation="0"><div class="cell-contents"><div class="cell-mask"></div><span class="imported-info-area"></span><div class="codecell-input-output">
      <div class="inputarea horizontal layout code">
        <div class="cell-gutter">
          <!-- Bounding range for vertical scrolling of icons -->
          <div class="cell-execution-container">
            <colab-run-button title="Run cell (Ctrl+Enter)
cell executed since last change

executed by Ragul Azhagesan
3:33 PM (29 minutes ago)
executed in 0.532s" role="button" aria-label="Run cell"><template shadowrootmode="open"><!----> <div class="cell-execution">
      <div class="execution-count"><!--?lit$9212114395$-->[3]</div>
      <div class="cell-execution-indicator"> <!--?lit$9212114395$-->
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
  <!--?lit$9212114395$-->
  <mask id="playSymbolMask">
    <rect width="100%" height="100%" fill="white"></rect>
    <polygon points="10,8 17,12 10,16" fill="black"></polygon>
  </mask>
  <circle cx="12" cy="12" r="7.8" mask="url(#playSymbolMask)" id="filledCircle"></circle>
</svg> </div>
      <!--?lit$9212114395$--><div id="status">
      <md-icon aria-hidden="true"><template shadowrootmode="open"><!----><slot></slot></template><!--?lit$9212114395$--><svg viewBox="0 0 24 24"><!--?lit$9212114395$--><path d="M9 16.17L4.83 12l-1.42 1.41L9 19 21 7l-1.41-1.41z"></path></svg></md-icon>
      <div><!--?lit$9212114395$-->0s</div>
    </div>
    </div></template></colab-run-button>
          </div>
        </div>
      <div class="editor flex lazy-editor" style=""><div class="editor flex monaco" data-keybinding-context="85" data-mode-id="notebook-python" style="height: 67px; --vscode-editorCodeLens-lineHeight: 16px; --vscode-editorCodeLens-fontSize: 12px; --vscode-editorCodeLens-fontFeatureSettings: &quot;liga&quot; off, &quot;calt&quot; off;"><div class="monaco-editor no-user-select  showUnused showDeprecated vs" role="code" data-uri="inmemory://model/7" style="width: 1411px; height: 67px;"><div data-mprt="3" class="overflow-guard" style="width: 1411px; height: 67px; overflow: clip;"><div class="margin" role="presentation" aria-hidden="true" style="position: absolute; contain: strict; will-change: unset; top: 0px; height: 67px; width: 6px;"><div class="glyph-margin" style="left: 0px; width: 0px; height: 67px;"></div><div class="margin-view-zones" role="presentation" aria-hidden="true" style="position: absolute;"></div><div class="margin-view-overlays" role="presentation" aria-hidden="true" style="position: absolute; font-family: monospace, Consolas, &quot;Courier New&quot;, monospace; font-weight: normal; font-size: 14px; font-feature-settings: &quot;liga&quot; 0, &quot;calt&quot; 0; font-variation-settings: normal; line-height: 19px; letter-spacing: 0px; width: 6px; height: 67px;"><div style="position:absolute;top:0px;width:100%;height:19px;"><div class="current-line current-line-margin-both" style="width:6px; height:19px;"></div></div><div style="position:absolute;top:19px;width:100%;height:19px;"></div><div style="position:absolute;top:38px;width:100%;height:19px;"></div></div><div class="glyph-margin-widgets" style="position: absolute; top: 0px;"></div></div><div class="monaco-scrollable-element editor-scrollable vs" role="presentation" data-mprt="5" style="position: absolute; overflow: hidden; left: 6px; width: 1405px; height: 67px;"><div class="lines-content monaco-editor-background" style="position: absolute; overflow: hidden; width: 1e+06px; height: 67px; contain: strict; will-change: unset; top: 0px; left: 0px;"><div class="view-overlays" role="presentation" aria-hidden="true" style="position: absolute; font-family: monospace, Consolas, &quot;Courier New&quot;, monospace; font-weight: normal; font-size: 14px; font-feature-settings: &quot;liga&quot; 0, &quot;calt&quot; 0; font-variation-settings: normal; line-height: 19px; letter-spacing: 0px; height: 0px; width: 1405px;"><div style="position:absolute;top:0px;width:100%;height:19px;"><div class="current-line" style="width:1405px; height:19px;"></div></div><div style="position:absolute;top:19px;width:100%;height:19px;"></div><div style="position:absolute;top:38px;width:100%;height:19px;"></div></div><div role="presentation" aria-hidden="true" class="view-rulers"></div><div class="view-zones" role="presentation" aria-hidden="true" style="position: absolute;"></div><div class="view-lines monaco-mouse-cursor-text" role="presentation" aria-hidden="true" data-mprt="7" style="position: absolute; font-family: monospace, Consolas, &quot;Courier New&quot;, monospace; font-weight: normal; font-size: 14px; font-feature-settings: &quot;liga&quot; 0, &quot;calt&quot; 0; font-variation-settings: normal; line-height: 19px; letter-spacing: 0px; width: 1405px; height: 67px;"><div style="top:0px;height:19px;" class="view-line"><span><span class="mtk15">print</span><span class="mtk1 bracket-highlighting-0">(</span><span class="mtk26">"Data&nbsp;heads:"</span><span class="mtk1 bracket-highlighting-0">)</span></span></div><div style="top:19px;height:19px;" class="view-line"><span><span class="mtk15">print</span><span class="mtk1 bracket-highlighting-0">(</span><span class="mtk1">data.head</span><span class="mtk1 bracket-highlighting-1">(</span><span class="mtk1 bracket-highlighting-1">)</span><span class="mtk1 bracket-highlighting-0">)</span></span></div><div style="top:38px;height:19px;" class="view-line"><span><span></span></span></div></div><div data-mprt="1" class="contentWidgets" style="position: absolute; top: 0px;"></div><div role="presentation" aria-hidden="true" class="cursors-layer cursor-line-style cursor-solid"><div class="cursor monaco-mouse-cursor-text " style="height: 19px; top: 0px; left: 0px; font-family: monospace, Consolas, &quot;Courier New&quot;, monospace; font-weight: normal; font-size: 14px; font-feature-settings: &quot;liga&quot; 0, &quot;calt&quot; 0; font-variation-settings: normal; line-height: 19px; letter-spacing: 0px; display: block; visibility: hidden; padding-left: 0px; width: 1.6px;"></div></div></div><div role="presentation" aria-hidden="true" class="invisible scrollbar horizontal" style="position: absolute; width: 1391px; height: 10px; left: 0px; bottom: 0px;"><div class="slider" style="position: absolute; top: 0px; left: 0px; height: 10px; transform: translate3d(0px, 0px, 0px); contain: strict; will-change: unset; width: 1391px;"></div></div><canvas class="decorationsOverviewRuler" aria-hidden="true" width="17" height="83" style="position: absolute; transform: translate3d(0px, 0px, 0px); contain: strict; top: 0px; right: 0px; width: 14px; height: 67px; will-change: unset; display: block;"></canvas><div role="presentation" aria-hidden="true" class="invisible scrollbar vertical" style="position: absolute; width: 14px; height: 67px; right: 0px; top: 0px;"><div class="slider" style="position: absolute; top: 0px; left: 0px; width: 14px; transform: translate3d(0px, 0px, 0px); contain: strict; will-change: unset; height: 67px;"></div></div></div><div role="presentation" aria-hidden="true" style="width: 1411px;"></div><textarea data-mprt="6" class="inputarea monaco-mouse-cursor-text" wrap="on" autocorrect="off" autocapitalize="off" autocomplete="off" spellcheck="false" aria-label="Editor content;Press Alt+F1 for Accessibility Options." tabindex="0" role="textbox" aria-roledescription="editor" aria-multiline="true" aria-haspopup="false" aria-autocomplete="both" style="tab-size: 15.3984px; font-family: monospace, Consolas, &quot;Courier New&quot;, monospace; font-weight: normal; font-size: 14px; font-feature-settings: &quot;liga&quot; 0, &quot;calt&quot; 0; font-variation-settings: normal; line-height: 19px; letter-spacing: 0px; top: 0px; left: 6px; width: 76992px; height: 1px;"></textarea><div class="monaco-editor-background textAreaCover" style="position: absolute; top: 0px; left: 0px; width: 0px; height: 0px;"></div><div data-mprt="4" class="overlayWidgets" style="width: 1411px;"><div widgetid="editor.contrib.quickInputWidget" style="position: absolute; top: 0px; right: 50%;"></div></div><div data-mprt="8" class="minimap slider-mouseover" role="presentation" aria-hidden="true" style="position: absolute; left: 0px; width: 0px; height: 67px;"><div class="minimap-shadow-hidden" style="height: 67px;"></div><canvas width="0" height="83" style="position: absolute; left: 0px; width: 0px; height: 67px;"></canvas><canvas class="minimap-decorations-layer" width="0" height="83" style="position: absolute; left: 0px; width: 0px; height: 67px;"></canvas><div class="minimap-slider" style="position: absolute; transform: translate3d(0px, 0px, 0px); contain: strict; width: 0px; will-change: unset;"><div class="minimap-slider-horizontal" style="position: absolute; width: 0px; height: 0px;"></div></div></div><div role="presentation" aria-hidden="true" class="blockDecorations-container"></div></div><div data-mprt="2" class="overflowingContentWidgets"><div widgetid="editor.contrib.resizableContentHoverWidget" style="position: fixed; height: 10px; width: 10px; z-index: 50; display: none; visibility: hidden; max-width: 1536px;"><div class="monaco-sash vertical" style="left: 8px;"></div><div class="monaco-sash vertical" style="left: -2px;"></div><div class="monaco-sash orthogonal-edge-north horizontal" style="top: -2px;"><div class="orthogonal-drag-handle start"></div><div class="orthogonal-drag-handle end"></div></div><div class="monaco-sash orthogonal-edge-south horizontal" style="top: 8px;"><div class="orthogonal-drag-handle start"></div><div class="orthogonal-drag-handle end"></div></div><div class="monaco-hover hidden" tabindex="0" role="tooltip"><div class="monaco-scrollable-element " role="presentation" style="position: relative; overflow: hidden;"><div class="monaco-hover-content" style="overflow: hidden; font-size: 14px; line-height: 1.35714; max-width: 931.26px; max-height: 250px;"></div><div role="presentation" aria-hidden="true" class="invisible scrollbar horizontal" style="position: absolute;"><div class="slider" style="position: absolute; top: 0px; left: 0px; height: 10px; transform: translate3d(0px, 0px, 0px); contain: strict;"></div></div><div role="presentation" aria-hidden="true" class="invisible scrollbar vertical" style="position: absolute;"><div class="slider" style="position: absolute; top: 0px; left: 0px; width: 10px; transform: translate3d(0px, 0px, 0px); contain: strict;"></div></div><div class="shadow"></div><div class="shadow"></div><div class="shadow"></div></div></div></div></div><div class=".in-cell-overflowing"></div></div></div></div><colab-form class="formview vertical layout flex"><div class="widget-area vertical layout"></div></colab-form></div>
    <div class="output" aria-label="Cell 4 output" role="region"><!----> <div class="output-header"> </div>
        <div class="output-content">
          <div class="output-info"><colab-output-info title="Clear output

executed by Ragul Azhagesan
3:33 PM (19 minutes ago)
executed in 0.532s"><template shadowrootmode="open"><!----><md-icon-button title="Code cell output actions" data-aria-label="Code cell output actions" value=""><template shadowrootmode="open" shadowrootdelegatesfocus><!----><button id="button" class="icon-button  standard " aria-label="Code cell output actions">
        <!--?lit$9212114395$--><md-focus-ring part="focus-ring" for="button" aria-hidden="true"><template shadowrootmode="open"><!----></template></md-focus-ring>
        <!--?lit$9212114395$--><md-ripple aria-hidden="true"><template shadowrootmode="open"><!----><div class="surface"></div></template></md-ripple>
        <!--?lit$9212114395$--><span class="icon"><slot></slot></span>
        <!--?lit$9212114395$-->
        <!--?lit$9212114395$--><span class="touch"></span>
        <!--?lit$9212114395$-->
  </button></template>
        <md-icon aria-hidden="true"><template shadowrootmode="open"><!----><slot></slot></template><!--?lit$9212114395$--><svg viewBox="0 0 24 24"><!--?lit$9212114395$--><path d="m15.9 3.07c-4.32 0.0742-8.64-0.0355-13 0.0568-1.37 0.307-1.74 2.1-1.41 3.26 0.469 0.606 1.86 0.384 1.66-0.525 0.0448-0.329-0.183-0.93 0.354-0.766h13.3v1.53h1.71c0.0709-1.13 0.141-2.62-0.968-3.3-0.511-0.264-1.11-0.252-1.67-0.259zm2.94 6.84v4.87c1.62-1.62 3.24-3.24 4.87-4.87h-4.87zm0 0h-1.71v3.43l1.57 1.57c0.32-1.65 0.0556-3.34 0.135-5zm-1.71 3.43v-3.43h-3.43c1.14 1.14 2.29 2.29 3.43 3.43zm1.4 4.27h-1.71v1.48h-13.6v-1.48h-1.71c-0.0473 1.15-0.16 2.72 1.09 3.29 1.47 0.506 3.02 0.0265 4.53 0.192 3.34-0.0051 6.68 0.0336 10-0.0245 1.49-0.366 1.56-2.22 1.42-3.45zm-10.1-1.12c-0.398-0.483-0.796-0.967-1.19-1.45 0.59-0.683 1.18-1.37 1.77-2.05h-8.67v-2h8.67c-0.59-0.683-1.18-1.37-1.77-2.05 0.398-0.483 0.796-0.967 1.19-1.45 1.28 1.5 2.56 3 3.84 4.5-1.28 1.5-2.56 3-3.84 4.5z"></path></svg></md-icon>
      </md-icon-button></template></colab-output-info></div>
          <div class="output-iframe-container">
            <div class="output-iframe-sizer"> <div><div><colab-static-output-renderer tabindex="0" role="group"><div><div class="stream output_text"><pre>Data heads:
                 SUBDIVISION  YEAR   JAN    FEB   MAR    APR    MAY    JUN  \
0  ANDAMAN &amp; NICOBAR ISLANDS  1901  49.2   87.1  29.2    2.3  528.8  517.5   
1  ANDAMAN &amp; NICOBAR ISLANDS  1902   0.0  159.8  12.2    0.0  446.1  537.1   
2  ANDAMAN &amp; NICOBAR ISLANDS  1903  12.7  144.0   0.0    1.0  235.1  479.9   
3  ANDAMAN &amp; NICOBAR ISLANDS  1904   9.4   14.7   0.0  202.4  304.5  495.1   
4  ANDAMAN &amp; NICOBAR ISLANDS  1905   1.3    0.0   3.3   26.9  279.5  628.7   

     JUL    AUG    SEP    OCT    NOV    DEC  ANNUAL  Jan-Feb  Mar-May  \
0  365.1  481.1  332.6  388.5  558.2   33.6  3373.2    136.3    560.3   
1  228.9  753.7  666.2  197.2  359.0  160.5  3520.7    159.8    458.3   
2  728.4  326.7  339.0  181.2  284.4  225.0  2957.4    156.7    236.1   
3  502.0  160.1  820.4  222.2  308.7   40.1  3079.6     24.1    506.9   
4  368.7  330.5  297.0  260.7   25.4  344.7  2566.7      1.3    309.7   

   Jun-Sep  Oct-Dec  
0   1696.3    980.3  
1   2185.9    716.7  
2   1874.0    690.6  
3   1977.6    571.0  
4   1624.9    630.8  
</pre></div></div><div></div></colab-static-output-renderer></div></div></div>
          </div>
        </div></div></div><colab-cell-next-steps><template shadowrootmode="open"><!----></template></colab-cell-next-steps></div></div><div class="add-cell">
      <hr>
    </div></div><div class="cell code code-has-output icon-scrolling" id="cell-iiB0jBftvypS" tabindex="-1" role="region" aria-label="Cell 5: Code cell: " style=""><div class="cell-tag-editor sticky"></div><div class="cell-toolbar sticky"></div><div class="main-content" elevation="0"><div class="cell-contents"><div class="cell-mask"></div><span class="imported-info-area"></span><div class="codecell-input-output">
      <div class="inputarea horizontal layout code">
        <div class="cell-gutter">
          <!-- Bounding range for vertical scrolling of icons -->
          <div class="cell-execution-container">
            <colab-run-button title="Run cell (Ctrl+Enter)
cell executed since last change

executed by Ragul Azhagesan
3:34 PM (27 minutes ago)
executed in 0.412s" role="button" aria-label="Run cell"><template shadowrootmode="open"><!----> <div class="cell-execution">
      <div class="execution-count"><!--?lit$9212114395$-->[4]</div>
      <div class="cell-execution-indicator"> <!--?lit$9212114395$-->
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
  <!--?lit$9212114395$-->
  <mask id="playSymbolMask">
    <rect width="100%" height="100%" fill="white"></rect>
    <polygon points="10,8 17,12 10,16" fill="black"></polygon>
  </mask>
  <circle cx="12" cy="12" r="7.8" mask="url(#playSymbolMask)" id="filledCircle"></circle>
</svg> </div>
      <!--?lit$9212114395$--><div id="status">
      <md-icon aria-hidden="true"><template shadowrootmode="open"><!----><slot></slot></template><!--?lit$9212114395$--><svg viewBox="0 0 24 24"><!--?lit$9212114395$--><path d="M9 16.17L4.83 12l-1.42 1.41L9 19 21 7l-1.41-1.41z"></path></svg></md-icon>
      <div><!--?lit$9212114395$-->0s</div>
    </div>
    </div></template></colab-run-button>
          </div>
        </div>
      <div class="editor flex lazy-editor" style=""><pre class="lazy-virtualized" style="font-size: 14px; line-height: 19px;"><pre class="lazy-gutter"></pre><pre class="monaco-colorized colab colab colab colab colab colab" data-lang="notebook-python"><span><span class="mtk15">print</span><span class="mtk1">(</span><span class="mtk26">"Null&nbsp;values&nbsp;in&nbsp;the&nbsp;dataset&nbsp;before&nbsp;preprocessing:"</span><span class="mtk1">)</span></span><br><span><span class="mtk15">print</span><span class="mtk1">(data.isnull().</span><span class="mtk15">sum</span><span class="mtk1">())</span></span><br></pre><colab-read-only-cell-placeholder style="display: none;"><template shadowrootmode="open"><!----><div><!--?lit$9212114395$-->Start coding or <span tabindex="0" role="button" class="link">generate</span> with AI.</div></template></colab-read-only-cell-placeholder></pre></div><colab-form class="formview vertical layout flex"><div class="widget-area vertical layout"></div></colab-form></div>
    <div class="output" aria-label="Cell 5 output" role="region"><!----> <div class="output-header"> </div>
        <div class="output-content">
          <div class="output-info"><colab-output-info title="Clear output

executed by Ragul Azhagesan
3:34 PM (17 minutes ago)
executed in 0.412s"><template shadowrootmode="open"><!----><md-icon-button title="Code cell output actions" data-aria-label="Code cell output actions" value=""><template shadowrootmode="open" shadowrootdelegatesfocus><!----><button id="button" class="icon-button  standard " aria-label="Code cell output actions">
        <!--?lit$9212114395$--><md-focus-ring part="focus-ring" for="button" aria-hidden="true"><template shadowrootmode="open"><!----></template></md-focus-ring>
        <!--?lit$9212114395$--><md-ripple aria-hidden="true"><template shadowrootmode="open"><!----><div class="surface"></div></template></md-ripple>
        <!--?lit$9212114395$--><span class="icon"><slot></slot></span>
        <!--?lit$9212114395$-->
        <!--?lit$9212114395$--><span class="touch"></span>
        <!--?lit$9212114395$-->
  </button></template>
        <md-icon aria-hidden="true"><template shadowrootmode="open"><!----><slot></slot></template><!--?lit$9212114395$--><svg viewBox="0 0 24 24"><!--?lit$9212114395$--><path d="m15.9 3.07c-4.32 0.0742-8.64-0.0355-13 0.0568-1.37 0.307-1.74 2.1-1.41 3.26 0.469 0.606 1.86 0.384 1.66-0.525 0.0448-0.329-0.183-0.93 0.354-0.766h13.3v1.53h1.71c0.0709-1.13 0.141-2.62-0.968-3.3-0.511-0.264-1.11-0.252-1.67-0.259zm2.94 6.84v4.87c1.62-1.62 3.24-3.24 4.87-4.87h-4.87zm0 0h-1.71v3.43l1.57 1.57c0.32-1.65 0.0556-3.34 0.135-5zm-1.71 3.43v-3.43h-3.43c1.14 1.14 2.29 2.29 3.43 3.43zm1.4 4.27h-1.71v1.48h-13.6v-1.48h-1.71c-0.0473 1.15-0.16 2.72 1.09 3.29 1.47 0.506 3.02 0.0265 4.53 0.192 3.34-0.0051 6.68 0.0336 10-0.0245 1.49-0.366 1.56-2.22 1.42-3.45zm-10.1-1.12c-0.398-0.483-0.796-0.967-1.19-1.45 0.59-0.683 1.18-1.37 1.77-2.05h-8.67v-2h8.67c-0.59-0.683-1.18-1.37-1.77-2.05 0.398-0.483 0.796-0.967 1.19-1.45 1.28 1.5 2.56 3 3.84 4.5-1.28 1.5-2.56 3-3.84 4.5z"></path></svg></md-icon>
      </md-icon-button></template></colab-output-info></div>
          <div class="output-iframe-container">
            <div class="output-iframe-sizer"> <div><div><colab-static-output-renderer tabindex="0" role="group"><div><div class="stream output_text"><pre>Null values in the dataset before preprocessing:
SUBDIVISION     0
YEAR            0
JAN             4
FEB             3
MAR             6
APR             4
MAY             3
JUN             5
JUL             7
AUG             4
SEP             6
OCT             7
NOV            11
DEC            10
ANNUAL         26
Jan-Feb         6
Mar-May         9
Jun-Sep        10
Oct-Dec        13
dtype: int64
</pre></div></div><div></div></colab-static-output-renderer></div></div></div>
          </div>
        </div></div></div><colab-cell-next-steps><template shadowrootmode="open"><!----></template></colab-cell-next-steps></div></div><div class="add-cell">
      <hr>
    </div></div><div class="cell code code-has-output icon-scrolling" id="cell-_R-kqo04wIiJ" tabindex="-1" role="region" aria-label="Cell 6: Code cell: " style=""><div class="cell-tag-editor sticky"></div><div class="cell-toolbar sticky"></div><div class="main-content" elevation="0"><div class="cell-contents"><div class="cell-mask"></div><span class="imported-info-area"></span><div class="codecell-input-output">
      <div class="inputarea horizontal layout code">
        <div class="cell-gutter">
          <!-- Bounding range for vertical scrolling of icons -->
          <div class="cell-execution-container">
            <colab-run-button title="Run cell (Ctrl+Enter)
cell executed since last change

executed by Ragul Azhagesan
3:35 PM (27 minutes ago)
executed in 0.011s" role="button" aria-label="Run cell"><template shadowrootmode="open"><!----> <div class="cell-execution">
      <div class="execution-count"><!--?lit$9212114395$-->[5]</div>
      <div class="cell-execution-indicator"> <!--?lit$9212114395$-->
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
  <!--?lit$9212114395$-->
  <mask id="playSymbolMask">
    <rect width="100%" height="100%" fill="white"></rect>
    <polygon points="10,8 17,12 10,16" fill="black"></polygon>
  </mask>
  <circle cx="12" cy="12" r="7.8" mask="url(#playSymbolMask)" id="filledCircle"></circle>
</svg> </div>
      <!--?lit$9212114395$--><div id="status">
      <md-icon aria-hidden="true"><template shadowrootmode="open"><!----><slot></slot></template><!--?lit$9212114395$--><svg viewBox="0 0 24 24"><!--?lit$9212114395$--><path d="M9 16.17L4.83 12l-1.42 1.41L9 19 21 7l-1.41-1.41z"></path></svg></md-icon>
      <div><!--?lit$9212114395$-->0s</div>
    </div>
    </div></template></colab-run-button>
          </div>
        </div>
      <div class="editor flex lazy-editor" style=""><pre class="lazy-virtualized" style="font-size: 14px; line-height: 19px;"><pre class="lazy-gutter"></pre><pre class="monaco-colorized colab colab colab colab colab colab colab" data-lang="notebook-python"><span><span class="mtk15">print</span><span class="mtk1">(</span><span class="mtk26">"Filling&nbsp;null&nbsp;values&nbsp;with&nbsp;mean&nbsp;of&nbsp;that&nbsp;particular&nbsp;</span><span class="mtk26">column"</span><span class="mtk1">)</span></span><br><span><span class="mtk1">numeric_columns&nbsp;=&nbsp;data.select_dtypes(include=[np.n</span><span class="mtk1">umber]).columns</span></span><br><span><span class="mtk1">data[numeric_columns]&nbsp;=&nbsp;data[numeric_columns].fill</span><span class="mtk1">na(data[numeric_columns].mean())</span></span><br></pre><colab-read-only-cell-placeholder style="display: none;"><template shadowrootmode="open"><!----><div><!--?lit$9212114395$-->Start coding or <span tabindex="0" role="button" class="link">generate</span> with AI.</div></template></colab-read-only-cell-placeholder></pre></div><colab-form class="formview vertical layout flex"><div class="widget-area vertical layout"></div></colab-form></div>
    <div class="output" aria-label="Cell 6 output" role="region"><!----> <div class="output-header"> </div>
        <div class="output-content">
          <div class="output-info"><colab-output-info title="Clear output

executed by Ragul Azhagesan
3:35 PM (17 minutes ago)
executed in 0.011s"><template shadowrootmode="open"><!----><md-icon-button title="Code cell output actions" data-aria-label="Code cell output actions" value=""><template shadowrootmode="open" shadowrootdelegatesfocus><!----><button id="button" class="icon-button  standard " aria-label="Code cell output actions">
        <!--?lit$9212114395$--><md-focus-ring part="focus-ring" for="button" aria-hidden="true"><template shadowrootmode="open"><!----></template></md-focus-ring>
        <!--?lit$9212114395$--><md-ripple aria-hidden="true"><template shadowrootmode="open"><!----><div class="surface   "></div></template></md-ripple>
        <!--?lit$9212114395$--><span class="icon"><slot></slot></span>
        <!--?lit$9212114395$-->
        <!--?lit$9212114395$--><span class="touch"></span>
        <!--?lit$9212114395$-->
  </button></template>
        <md-icon aria-hidden="true"><template shadowrootmode="open"><!----><slot></slot></template><!--?lit$9212114395$--><svg viewBox="0 0 24 24"><!--?lit$9212114395$--><path d="m15.9 3.07c-4.32 0.0742-8.64-0.0355-13 0.0568-1.37 0.307-1.74 2.1-1.41 3.26 0.469 0.606 1.86 0.384 1.66-0.525 0.0448-0.329-0.183-0.93 0.354-0.766h13.3v1.53h1.71c0.0709-1.13 0.141-2.62-0.968-3.3-0.511-0.264-1.11-0.252-1.67-0.259zm2.94 6.84v4.87c1.62-1.62 3.24-3.24 4.87-4.87h-4.87zm0 0h-1.71v3.43l1.57 1.57c0.32-1.65 0.0556-3.34 0.135-5zm-1.71 3.43v-3.43h-3.43c1.14 1.14 2.29 2.29 3.43 3.43zm1.4 4.27h-1.71v1.48h-13.6v-1.48h-1.71c-0.0473 1.15-0.16 2.72 1.09 3.29 1.47 0.506 3.02 0.0265 4.53 0.192 3.34-0.0051 6.68 0.0336 10-0.0245 1.49-0.366 1.56-2.22 1.42-3.45zm-10.1-1.12c-0.398-0.483-0.796-0.967-1.19-1.45 0.59-0.683 1.18-1.37 1.77-2.05h-8.67v-2h8.67c-0.59-0.683-1.18-1.37-1.77-2.05 0.398-0.483 0.796-0.967 1.19-1.45 1.28 1.5 2.56 3 3.84 4.5-1.28 1.5-2.56 3-3.84 4.5z"></path></svg></md-icon>
      </md-icon-button></template></colab-output-info></div>
          <div class="output-iframe-container">
            <div class="output-iframe-sizer"> <div><div><colab-static-output-renderer tabindex="0" role="group"><div><div class="stream output_text"><pre>Filling null values with mean of that particular column
</pre></div></div><div></div></colab-static-output-renderer></div></div></div>
          </div>
        </div></div></div><colab-cell-next-steps><template shadowrootmode="open"><!----></template></colab-cell-next-steps></div></div><div class="add-cell">
      <hr>
    </div></div><div class="cell code code-has-output icon-scrolling" id="cell-1jITNSQIwSwm" tabindex="-1" role="region" aria-label="Cell 7: Code cell: " style=""><div class="cell-tag-editor sticky"></div><div class="cell-toolbar sticky"></div><div class="main-content" elevation="0"><div class="cell-contents"><div class="cell-mask"></div><span class="imported-info-area"></span><div class="codecell-input-output">
      <div class="inputarea horizontal layout code">
        <div class="cell-gutter">
          <!-- Bounding range for vertical scrolling of icons -->
          <div class="cell-execution-container">
            <colab-run-button title="Run cell (Ctrl+Enter)
cell executed since last change

executed by Ragul Azhagesan
3:35 PM (26 minutes ago)
executed in 0.462s" role="button" aria-label="Run cell"><template shadowrootmode="open"><!----> <div class="cell-execution">
      <div class="execution-count"><!--?lit$9212114395$-->[6]</div>
      <div class="cell-execution-indicator"> <!--?lit$9212114395$-->
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
  <!--?lit$9212114395$-->
  <mask id="playSymbolMask">
    <rect width="100%" height="100%" fill="white"></rect>
    <polygon points="10,8 17,12 10,16" fill="black"></polygon>
  </mask>
  <circle cx="12" cy="12" r="7.8" mask="url(#playSymbolMask)" id="filledCircle"></circle>
</svg> </div>
      <!--?lit$9212114395$--><div id="status">
      <md-icon aria-hidden="true"><template shadowrootmode="open"><!----><slot></slot></template><!--?lit$9212114395$--><svg viewBox="0 0 24 24"><!--?lit$9212114395$--><path d="M9 16.17L4.83 12l-1.42 1.41L9 19 21 7l-1.41-1.41z"></path></svg></md-icon>
      <div><!--?lit$9212114395$-->0s</div>
    </div>
    </div></template></colab-run-button>
          </div>
        </div>
      <div class="editor flex lazy-editor" style=""><pre class="lazy-virtualized" style="font-size: 14px; line-height: 19px;"><pre class="lazy-gutter"></pre><pre class="monaco-colorized colab colab colab colab colab colab colab colab" data-lang="notebook-python"><span><span class="mtk15">print</span><span class="mtk1">(</span><span class="mtk26">"Mean&nbsp;of&nbsp;numeric&nbsp;columns&nbsp;in&nbsp;data:"</span><span class="mtk1">)</span></span><br><span><span class="mtk15">print</span><span class="mtk1">(data[numeric_columns].mean())</span></span><br></pre><colab-read-only-cell-placeholder style="display: none;"><template shadowrootmode="open"><!----><div><!--?lit$9212114395$-->Start coding or <span tabindex="0" role="button" class="link">generate</span> with AI.</div></template></colab-read-only-cell-placeholder></pre></div><colab-form class="formview vertical layout flex"><div class="widget-area vertical layout"></div></colab-form></div>
    <div class="output" aria-label="Cell 7 output" role="region"><!----> <div class="output-header"> </div>
        <div class="output-content">
          <div class="output-info"><colab-output-info title="Clear output

executed by Ragul Azhagesan
3:35 PM (16 minutes ago)
executed in 0.462s"><template shadowrootmode="open"><!----><md-icon-button title="Code cell output actions" data-aria-label="Code cell output actions" value=""><template shadowrootmode="open" shadowrootdelegatesfocus><!----><button id="button" class="icon-button  standard " aria-label="Code cell output actions">
        <!--?lit$9212114395$--><md-focus-ring part="focus-ring" for="button" aria-hidden="true"><template shadowrootmode="open"><!----></template></md-focus-ring>
        <!--?lit$9212114395$--><md-ripple aria-hidden="true"><template shadowrootmode="open"><!----><div class="surface"></div></template></md-ripple>
        <!--?lit$9212114395$--><span class="icon"><slot></slot></span>
        <!--?lit$9212114395$-->
        <!--?lit$9212114395$--><span class="touch"></span>
        <!--?lit$9212114395$-->
  </button></template>
        <md-icon aria-hidden="true"><template shadowrootmode="open"><!----><slot></slot></template><!--?lit$9212114395$--><svg viewBox="0 0 24 24"><!--?lit$9212114395$--><path d="m15.9 3.07c-4.32 0.0742-8.64-0.0355-13 0.0568-1.37 0.307-1.74 2.1-1.41 3.26 0.469 0.606 1.86 0.384 1.66-0.525 0.0448-0.329-0.183-0.93 0.354-0.766h13.3v1.53h1.71c0.0709-1.13 0.141-2.62-0.968-3.3-0.511-0.264-1.11-0.252-1.67-0.259zm2.94 6.84v4.87c1.62-1.62 3.24-3.24 4.87-4.87h-4.87zm0 0h-1.71v3.43l1.57 1.57c0.32-1.65 0.0556-3.34 0.135-5zm-1.71 3.43v-3.43h-3.43c1.14 1.14 2.29 2.29 3.43 3.43zm1.4 4.27h-1.71v1.48h-13.6v-1.48h-1.71c-0.0473 1.15-0.16 2.72 1.09 3.29 1.47 0.506 3.02 0.0265 4.53 0.192 3.34-0.0051 6.68 0.0336 10-0.0245 1.49-0.366 1.56-2.22 1.42-3.45zm-10.1-1.12c-0.398-0.483-0.796-0.967-1.19-1.45 0.59-0.683 1.18-1.37 1.77-2.05h-8.67v-2h8.67c-0.59-0.683-1.18-1.37-1.77-2.05 0.398-0.483 0.796-0.967 1.19-1.45 1.28 1.5 2.56 3 3.84 4.5-1.28 1.5-2.56 3-3.84 4.5z"></path></svg></md-icon>
      </md-icon-button></template></colab-output-info></div>
          <div class="output-iframe-container">
            <div class="output-iframe-sizer"> <div><div><colab-static-output-renderer tabindex="0" role="group"><div><div class="stream output_text"><pre>Mean of numeric columns in data:
YEAR       1958.218659
JAN          18.957320
FEB          21.805325
MAR          27.359197
APR          43.127432
MAY          85.745417
JUN         230.234444
JUL         347.214334
AUG         290.263497
SEP         197.361922
OCT          95.507009
NOV          39.866163
DEC          18.870580
ANNUAL     1411.008900
Jan-Feb      40.747786
Mar-May     155.901753
Jun-Sep    1064.724769
Oct-Dec     154.100487
dtype: float64
</pre></div></div><div></div></colab-static-output-renderer></div></div></div>
          </div>
        </div></div></div><colab-cell-next-steps><template shadowrootmode="open"><!----></template></colab-cell-next-steps></div></div><div class="add-cell">
      <hr>
    </div></div><div class="cell code code-has-output icon-scrolling" id="cell-4as4toHYwcAE" tabindex="-1" role="region" aria-label="Cell 8: Code cell: " style=""><div class="cell-tag-editor sticky"></div><div class="cell-toolbar sticky"></div><div class="main-content" elevation="0"><div class="cell-contents"><div class="cell-mask"></div><span class="imported-info-area"></span><div class="codecell-input-output">
      <div class="inputarea horizontal layout code">
        <div class="cell-gutter">
          <!-- Bounding range for vertical scrolling of icons -->
          <div class="cell-execution-container">
            <colab-run-button title="Run cell (Ctrl+Enter)
cell executed since last change

executed by Ragul Azhagesan
3:36 PM (25 minutes ago)
executed in 0.51s" role="button" aria-label="Run cell"><template shadowrootmode="open"><!----> <div class="cell-execution">
      <div class="execution-count"><!--?lit$9212114395$-->[7]</div>
      <div class="cell-execution-indicator"> <!--?lit$9212114395$-->
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
  <!--?lit$9212114395$-->
  <mask id="playSymbolMask">
    <rect width="100%" height="100%" fill="white"></rect>
    <polygon points="10,8 17,12 10,16" fill="black"></polygon>
  </mask>
  <circle cx="12" cy="12" r="7.8" mask="url(#playSymbolMask)" id="filledCircle"></circle>
</svg> </div>
      <!--?lit$9212114395$--><div id="status">
      <md-icon aria-hidden="true"><template shadowrootmode="open"><!----><slot></slot></template><!--?lit$9212114395$--><svg viewBox="0 0 24 24"><!--?lit$9212114395$--><path d="M9 16.17L4.83 12l-1.42 1.41L9 19 21 7l-1.41-1.41z"></path></svg></md-icon>
      <div><!--?lit$9212114395$-->0s</div>
    </div>
    </div></template></colab-run-button>
          </div>
        </div>
      <div class="editor flex lazy-editor" style=""><pre class="lazy-virtualized" style="font-size: 14px; line-height: 19px;"><pre class="lazy-gutter"></pre><pre class="monaco-colorized colab colab colab colab colab colab colab colab" data-lang="notebook-python"><span><span class="mtk15">print</span><span class="mtk1">(</span><span class="mtk26">"Null&nbsp;values&nbsp;in&nbsp;the&nbsp;dataset&nbsp;after&nbsp;preprocessing:"</span><span class="mtk1">)</span></span><br><span><span class="mtk15">print</span><span class="mtk1">(data.isnull().</span><span class="mtk15">sum</span><span class="mtk1">())</span></span><br><span><span></span></span><br></pre><colab-read-only-cell-placeholder style="display: none;"><template shadowrootmode="open"><!----><div><!--?lit$9212114395$-->Start coding or <span tabindex="0" role="button" class="link">generate</span> with AI.</div></template></colab-read-only-cell-placeholder></pre></div><colab-form class="formview vertical layout flex"><div class="widget-area vertical layout"></div></colab-form></div>
    <div class="output" aria-label="Cell 8 output" role="region"><!----> <div class="output-header"> </div>
        <div class="output-content">
          <div class="output-info"><colab-output-info title="Clear output

executed by Ragul Azhagesan
3:36 PM (16 minutes ago)
executed in 0.51s"><template shadowrootmode="open"><!----><md-icon-button title="Code cell output actions" data-aria-label="Code cell output actions" value=""><template shadowrootmode="open" shadowrootdelegatesfocus><!----><button id="button" class="icon-button  standard " aria-label="Code cell output actions">
        <!--?lit$9212114395$--><md-focus-ring part="focus-ring" for="button" aria-hidden="true"><template shadowrootmode="open"><!----></template></md-focus-ring>
        <!--?lit$9212114395$--><md-ripple aria-hidden="true"><template shadowrootmode="open"><!----><div class="surface"></div></template></md-ripple>
        <!--?lit$9212114395$--><span class="icon"><slot></slot></span>
        <!--?lit$9212114395$-->
        <!--?lit$9212114395$--><span class="touch"></span>
        <!--?lit$9212114395$-->
  </button></template>
        <md-icon aria-hidden="true"><template shadowrootmode="open"><!----><slot></slot></template><!--?lit$9212114395$--><svg viewBox="0 0 24 24"><!--?lit$9212114395$--><path d="m15.9 3.07c-4.32 0.0742-8.64-0.0355-13 0.0568-1.37 0.307-1.74 2.1-1.41 3.26 0.469 0.606 1.86 0.384 1.66-0.525 0.0448-0.329-0.183-0.93 0.354-0.766h13.3v1.53h1.71c0.0709-1.13 0.141-2.62-0.968-3.3-0.511-0.264-1.11-0.252-1.67-0.259zm2.94 6.84v4.87c1.62-1.62 3.24-3.24 4.87-4.87h-4.87zm0 0h-1.71v3.43l1.57 1.57c0.32-1.65 0.0556-3.34 0.135-5zm-1.71 3.43v-3.43h-3.43c1.14 1.14 2.29 2.29 3.43 3.43zm1.4 4.27h-1.71v1.48h-13.6v-1.48h-1.71c-0.0473 1.15-0.16 2.72 1.09 3.29 1.47 0.506 3.02 0.0265 4.53 0.192 3.34-0.0051 6.68 0.0336 10-0.0245 1.49-0.366 1.56-2.22 1.42-3.45zm-10.1-1.12c-0.398-0.483-0.796-0.967-1.19-1.45 0.59-0.683 1.18-1.37 1.77-2.05h-8.67v-2h8.67c-0.59-0.683-1.18-1.37-1.77-2.05 0.398-0.483 0.796-0.967 1.19-1.45 1.28 1.5 2.56 3 3.84 4.5-1.28 1.5-2.56 3-3.84 4.5z"></path></svg></md-icon>
      </md-icon-button></template></colab-output-info></div>
          <div class="output-iframe-container">
            <div class="output-iframe-sizer"> <div><div><colab-static-output-renderer tabindex="0" role="group"><div><div class="stream output_text"><pre>Null values in the dataset after preprocessing:
SUBDIVISION    0
YEAR           0
JAN            0
FEB            0
MAR            0
APR            0
MAY            0
JUN            0
JUL            0
AUG            0
SEP            0
OCT            0
NOV            0
DEC            0
ANNUAL         0
Jan-Feb        0
Mar-May        0
Jun-Sep        0
Oct-Dec        0
dtype: int64
</pre></div></div><div></div></colab-static-output-renderer></div></div></div>
          </div>
        </div></div></div><colab-cell-next-steps><template shadowrootmode="open"><!----></template></colab-cell-next-steps></div></div><div class="add-cell">
      <hr>
    </div></div><div class="cell code code-has-output icon-scrolling" id="cell-7Lj0_Brwwkyg" tabindex="-1" role="region" aria-label="Cell 9: Code cell: " style=""><div class="cell-tag-editor sticky"></div><div class="cell-toolbar sticky"></div><div class="main-content" elevation="0"><div class="cell-contents"><div class="cell-mask"></div><span class="imported-info-area"></span><div class="codecell-input-output">
      <div class="inputarea horizontal layout code">
        <div class="cell-gutter">
          <!-- Bounding range for vertical scrolling of icons -->
          <div class="cell-execution-container">
            <colab-run-button title="Run cell (Ctrl+Enter)
cell executed since last change

executed by Ragul Azhagesan
3:37 PM (25 minutes ago)
executed in 0.427s" role="button" aria-label="Run cell"><template shadowrootmode="open"><!----> <div class="cell-execution">
      <div class="execution-count"><!--?lit$9212114395$-->[8]</div>
      <div class="cell-execution-indicator"> <!--?lit$9212114395$-->
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
  <!--?lit$9212114395$-->
  <mask id="playSymbolMask">
    <rect width="100%" height="100%" fill="white"></rect>
    <polygon points="10,8 17,12 10,16" fill="black"></polygon>
  </mask>
  <circle cx="12" cy="12" r="7.8" mask="url(#playSymbolMask)" id="filledCircle"></circle>
</svg> </div>
      <!--?lit$9212114395$--><div id="status">
      <md-icon aria-hidden="true"><template shadowrootmode="open"><!----><slot></slot></template><!--?lit$9212114395$--><svg viewBox="0 0 24 24"><!--?lit$9212114395$--><path d="M9 16.17L4.83 12l-1.42 1.41L9 19 21 7l-1.41-1.41z"></path></svg></md-icon>
      <div><!--?lit$9212114395$-->0s</div>
    </div>
    </div></template></colab-run-button>
          </div>
        </div>
      <div class="editor flex lazy-editor" style=""><pre class="lazy-virtualized" style="font-size: 14px; line-height: 19px;"><pre class="lazy-gutter"></pre><pre class="monaco-colorized colab colab colab colab colab colab colab colab colab" data-lang="notebook-python"><span><span class="mtk15">print</span><span class="mtk1">(</span><span class="mtk26">"\n\nShape:&nbsp;"</span><span class="mtk1">,&nbsp;data.shape)</span></span><br></pre><colab-read-only-cell-placeholder style="display: none;"><template shadowrootmode="open"><!----><div><!--?lit$9212114395$-->Start coding or <span tabindex="0" role="button" class="link">generate</span> with AI.</div></template></colab-read-only-cell-placeholder></pre></div><colab-form class="formview vertical layout flex"><div class="widget-area vertical layout"></div></colab-form></div>
    <div class="output" aria-label="Cell 9 output" role="region"><!----> <div class="output-header"> </div>
        <div class="output-content">
          <div class="output-info"><colab-output-info title="Clear output

executed by Ragul Azhagesan
3:37 PM (15 minutes ago)
executed in 0.427s"><template shadowrootmode="open"><!----><md-icon-button title="Code cell output actions" data-aria-label="Code cell output actions" value=""><template shadowrootmode="open" shadowrootdelegatesfocus><!----><button id="button" class="icon-button  standard " aria-label="Code cell output actions">
        <!--?lit$9212114395$--><md-focus-ring part="focus-ring" for="button" aria-hidden="true"><template shadowrootmode="open"><!----></template></md-focus-ring>
        <!--?lit$9212114395$--><md-ripple aria-hidden="true"><template shadowrootmode="open"><!----><div class="surface"></div></template></md-ripple>
        <!--?lit$9212114395$--><span class="icon"><slot></slot></span>
        <!--?lit$9212114395$-->
        <!--?lit$9212114395$--><span class="touch"></span>
        <!--?lit$9212114395$-->
  </button></template>
        <md-icon aria-hidden="true"><template shadowrootmode="open"><!----><slot></slot></template><!--?lit$9212114395$--><svg viewBox="0 0 24 24"><!--?lit$9212114395$--><path d="m15.9 3.07c-4.32 0.0742-8.64-0.0355-13 0.0568-1.37 0.307-1.74 2.1-1.41 3.26 0.469 0.606 1.86 0.384 1.66-0.525 0.0448-0.329-0.183-0.93 0.354-0.766h13.3v1.53h1.71c0.0709-1.13 0.141-2.62-0.968-3.3-0.511-0.264-1.11-0.252-1.67-0.259zm2.94 6.84v4.87c1.62-1.62 3.24-3.24 4.87-4.87h-4.87zm0 0h-1.71v3.43l1.57 1.57c0.32-1.65 0.0556-3.34 0.135-5zm-1.71 3.43v-3.43h-3.43c1.14 1.14 2.29 2.29 3.43 3.43zm1.4 4.27h-1.71v1.48h-13.6v-1.48h-1.71c-0.0473 1.15-0.16 2.72 1.09 3.29 1.47 0.506 3.02 0.0265 4.53 0.192 3.34-0.0051 6.68 0.0336 10-0.0245 1.49-0.366 1.56-2.22 1.42-3.45zm-10.1-1.12c-0.398-0.483-0.796-0.967-1.19-1.45 0.59-0.683 1.18-1.37 1.77-2.05h-8.67v-2h8.67c-0.59-0.683-1.18-1.37-1.77-2.05 0.398-0.483 0.796-0.967 1.19-1.45 1.28 1.5 2.56 3 3.84 4.5-1.28 1.5-2.56 3-3.84 4.5z"></path></svg></md-icon>
      </md-icon-button></template></colab-output-info></div>
          <div class="output-iframe-container">
            <div class="output-iframe-sizer"> <div><div><colab-static-output-renderer tabindex="0" role="group"><div><div class="stream output_text"><pre>

Shape:  (4116, 19)
</pre></div></div><div></div></colab-static-output-renderer></div></div></div>
          </div>
        </div></div></div><colab-cell-next-steps><template shadowrootmode="open"><!----></template></colab-cell-next-steps></div></div><div class="add-cell">
      <div class="add-cell-buttons">
        <md-outlined-button class="add-code add-button" data-aria-label="Add code cell
Ctrl+M B" title="Add code cell
Ctrl+M B" value="" has-icon=""><template shadowrootmode="open" shadowrootdelegatesfocus><!---->
      <!--?lit$9212114395$--><div class="outline"></div>
      <div class="background"></div>
      <md-focus-ring part="focus-ring" for="button" aria-hidden="true"><template shadowrootmode="open"><!----></template></md-focus-ring>
      <md-ripple part="ripple" for="button" aria-hidden="true"><template shadowrootmode="open"><!----><div class="surface   "></div></template></md-ripple>
      <!--?lit$9212114395$--><button id="button" class="button" aria-label="Add code cell
Ctrl+M B">
      <!--?lit$9212114395$-->
      <span class="touch"></span>
      <!--?lit$9212114395$--><slot name="icon"></slot>
      <span class="label"><slot></slot></span>
      <!--?lit$9212114395$-->
    
    </button>
    </template>
          <md-icon slot="icon" aria-hidden="true"><template shadowrootmode="open"><!----><slot></slot></template>add</md-icon>
          <!--?lit$9212114395$-->Code
        </md-outlined-button>
        <md-outlined-button class="add-text add-button" data-aria-label="Add text cell" title="Add text cell" value="" has-icon=""><template shadowrootmode="open" shadowrootdelegatesfocus><!---->
      <!--?lit$9212114395$--><div class="outline"></div>
      <div class="background"></div>
      <md-focus-ring part="focus-ring" for="button" aria-hidden="true"><template shadowrootmode="open"><!----></template></md-focus-ring>
      <md-ripple part="ripple" for="button" aria-hidden="true"><template shadowrootmode="open"><!----><div class="surface   "></div></template></md-ripple>
      <!--?lit$9212114395$--><button id="button" class="button" aria-label="Add text cell">
      <!--?lit$9212114395$-->
      <span class="touch"></span>
      <!--?lit$9212114395$--><slot name="icon"></slot>
      <span class="label"><slot></slot></span>
      <!--?lit$9212114395$-->
    
    </button>
    </template>
          <md-icon slot="icon" aria-hidden="true"><template shadowrootmode="open"><!----><slot></slot></template>add</md-icon>
          <!--?lit$9212114395$-->Text
        </md-outlined-button>
        <!--?lit$9212114395$-->
      </div><hr>
    </div></div><div class="cell code code-has-output icon-scrolling" id="cell-bjOdyQk5wqa0" tabindex="-1" role="region" aria-label="Cell 10: Code cell: " style=""><div class="cell-tag-editor sticky"></div><div class="cell-toolbar sticky"></div><div class="main-content" elevation="0"><div class="cell-contents"><div class="cell-mask"></div><span class="imported-info-area"></span><div class="codecell-input-output">
      <div class="inputarea horizontal layout code">
        <div class="cell-gutter">
          <!-- Bounding range for vertical scrolling of icons -->
          <div class="cell-execution-container">
            <colab-run-button title="Run cell (Ctrl+Enter)
cell executed since last change

executed by Ragul Azhagesan
3:37 PM (25 minutes ago)
executed in 0.425s" role="button" aria-label="Run cell"><template shadowrootmode="open"><!----> <div class="cell-execution">
      <div class="execution-count"><!--?lit$9212114395$-->[9]</div>
      <div class="cell-execution-indicator"> <!--?lit$9212114395$-->
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
  <!--?lit$9212114395$-->
  <mask id="playSymbolMask">
    <rect width="100%" height="100%" fill="white"></rect>
    <polygon points="10,8 17,12 10,16" fill="black"></polygon>
  </mask>
  <circle cx="12" cy="12" r="7.8" mask="url(#playSymbolMask)" id="filledCircle"></circle>
</svg> </div>
      <!--?lit$9212114395$--><div id="status">
      <md-icon aria-hidden="true"><template shadowrootmode="open"><!----><slot></slot></template><!--?lit$9212114395$--><svg viewBox="0 0 24 24"><!--?lit$9212114395$--><path d="M9 16.17L4.83 12l-1.42 1.41L9 19 21 7l-1.41-1.41z"></path></svg></md-icon>
      <div><!--?lit$9212114395$-->0s</div>
    </div>
    </div></template></colab-run-button>
          </div>
        </div>
      <div class="editor flex lazy-editor" style=""><pre class="lazy-virtualized" style="font-size: 14px; line-height: 19px;"><pre class="lazy-gutter"></pre><pre class="monaco-colorized colab colab colab colab colab colab colab colab colab" data-lang="notebook-python"><span><span class="mtk15">print</span><span class="mtk1">(</span><span class="mtk26">"Info:"</span><span class="mtk1">)</span></span><br><span><span class="mtk15">print</span><span class="mtk1">(data.info())</span></span><br></pre><colab-read-only-cell-placeholder style="display: none;"><template shadowrootmode="open"><!----><div><!--?lit$9212114395$-->Start coding or <span tabindex="0" role="button" class="link">generate</span> with AI.</div></template></colab-read-only-cell-placeholder></pre></div><colab-form class="formview vertical layout flex"><div class="widget-area vertical layout"></div></colab-form></div>
    <div class="output" aria-label="Cell 10 output" role="region"><!----> <div class="output-header"> </div>
        <div class="output-content">
          <div class="output-info"><colab-output-info title="Clear output

executed by Ragul Azhagesan
3:37 PM (15 minutes ago)
executed in 0.425s"><template shadowrootmode="open"><!----><md-icon-button title="Code cell output actions" data-aria-label="Code cell output actions" value=""><template shadowrootmode="open" shadowrootdelegatesfocus><!----><button id="button" class="icon-button  standard " aria-label="Code cell output actions">
        <!--?lit$9212114395$--><md-focus-ring part="focus-ring" for="button" aria-hidden="true"><template shadowrootmode="open"><!----></template></md-focus-ring>
        <!--?lit$9212114395$--><md-ripple aria-hidden="true"><template shadowrootmode="open"><!----><div class="surface   "></div></template></md-ripple>
        <!--?lit$9212114395$--><span class="icon"><slot></slot></span>
        <!--?lit$9212114395$-->
        <!--?lit$9212114395$--><span class="touch"></span>
        <!--?lit$9212114395$-->
  </button></template>
        <md-icon aria-hidden="true"><template shadowrootmode="open"><!----><slot></slot></template><!--?lit$9212114395$--><svg viewBox="0 0 24 24"><!--?lit$9212114395$--><path d="m15.9 3.07c-4.32 0.0742-8.64-0.0355-13 0.0568-1.37 0.307-1.74 2.1-1.41 3.26 0.469 0.606 1.86 0.384 1.66-0.525 0.0448-0.329-0.183-0.93 0.354-0.766h13.3v1.53h1.71c0.0709-1.13 0.141-2.62-0.968-3.3-0.511-0.264-1.11-0.252-1.67-0.259zm2.94 6.84v4.87c1.62-1.62 3.24-3.24 4.87-4.87h-4.87zm0 0h-1.71v3.43l1.57 1.57c0.32-1.65 0.0556-3.34 0.135-5zm-1.71 3.43v-3.43h-3.43c1.14 1.14 2.29 2.29 3.43 3.43zm1.4 4.27h-1.71v1.48h-13.6v-1.48h-1.71c-0.0473 1.15-0.16 2.72 1.09 3.29 1.47 0.506 3.02 0.0265 4.53 0.192 3.34-0.0051 6.68 0.0336 10-0.0245 1.49-0.366 1.56-2.22 1.42-3.45zm-10.1-1.12c-0.398-0.483-0.796-0.967-1.19-1.45 0.59-0.683 1.18-1.37 1.77-2.05h-8.67v-2h8.67c-0.59-0.683-1.18-1.37-1.77-2.05 0.398-0.483 0.796-0.967 1.19-1.45 1.28 1.5 2.56 3 3.84 4.5-1.28 1.5-2.56 3-3.84 4.5z"></path></svg></md-icon>
      </md-icon-button></template></colab-output-info></div>
          <div class="output-iframe-container">
            <div class="output-iframe-sizer"> <div><div><colab-static-output-renderer tabindex="0" role="group"><div><div class="stream output_text"><pre>Info:
&lt;class 'pandas.core.frame.DataFrame'&gt;
RangeIndex: 4116 entries, 0 to 4115
Data columns (total 19 columns):
 #   Column       Non-Null Count  Dtype  
---  ------       --------------  -----  
 0   SUBDIVISION  4116 non-null   object 
 1   YEAR         4116 non-null   int64  
 2   JAN          4116 non-null   float64
 3   FEB          4116 non-null   float64
 4   MAR          4116 non-null   float64
 5   APR          4116 non-null   float64
 6   MAY          4116 non-null   float64
 7   JUN          4116 non-null   float64
 8   JUL          4116 non-null   float64
 9   AUG          4116 non-null   float64
 10  SEP          4116 non-null   float64
 11  OCT          4116 non-null   float64
 12  NOV          4116 non-null   float64
 13  DEC          4116 non-null   float64
 14  ANNUAL       4116 non-null   float64
 15  Jan-Feb      4116 non-null   float64
 16  Mar-May      4116 non-null   float64
 17  Jun-Sep      4116 non-null   float64
 18  Oct-Dec      4116 non-null   float64
dtypes: float64(17), int64(1), object(1)
memory usage: 611.1+ KB
None
</pre></div></div><div></div></colab-static-output-renderer></div></div></div>
          </div>
        </div></div></div><colab-cell-next-steps><template shadowrootmode="open"><!----></template></colab-cell-next-steps></div></div><div class="add-cell">
      <hr>
    </div></div><div class="cell code code-has-output icon-scrolling" id="cell-80EuP6YEwvfe" tabindex="-1" role="region" aria-label="Cell 11: Code cell: " style=""><div class="cell-tag-editor sticky"></div><div class="cell-toolbar sticky"></div><div class="main-content" elevation="0"><div class="cell-contents"><div class="cell-mask"></div><span class="imported-info-area"></span><div class="codecell-input-output">
      <div class="inputarea horizontal layout code">
        <div class="cell-gutter">
          <!-- Bounding range for vertical scrolling of icons -->
          <div class="cell-execution-container">
            <colab-run-button title="Run cell (Ctrl+Enter)
cell executed since last change

executed by Ragul Azhagesan
3:37 PM (24 minutes ago)
executed in 0.473s" role="button" aria-label="Run cell"><template shadowrootmode="open"><!----> <div class="cell-execution">
      <div class="execution-count"><!--?lit$9212114395$-->[10]</div>
      <div class="cell-execution-indicator"> <!--?lit$9212114395$-->
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
  <!--?lit$9212114395$-->
  <mask id="playSymbolMask">
    <rect width="100%" height="100%" fill="white"></rect>
    <polygon points="10,8 17,12 10,16" fill="black"></polygon>
  </mask>
  <circle cx="12" cy="12" r="7.8" mask="url(#playSymbolMask)" id="filledCircle"></circle>
</svg> </div>
      <!--?lit$9212114395$--><div id="status">
      <md-icon aria-hidden="true"><template shadowrootmode="open"><!----><slot></slot></template><!--?lit$9212114395$--><svg viewBox="0 0 24 24"><!--?lit$9212114395$--><path d="M9 16.17L4.83 12l-1.42 1.41L9 19 21 7l-1.41-1.41z"></path></svg></md-icon>
      <div><!--?lit$9212114395$-->0s</div>
    </div>
    </div></template></colab-run-button>
          </div>
        </div>
      <div class="editor flex lazy-editor" style=""><pre class="lazy-virtualized" style="font-size: 14px; line-height: 19px;"><pre class="lazy-gutter"></pre><pre class="monaco-colorized colab colab colab colab colab colab colab colab" data-lang="notebook-python"><span><span class="mtk15">print</span><span class="mtk1">(</span><span class="mtk26">"Group&nbsp;by:"</span><span class="mtk1">)</span></span><br><span><span class="mtk15">print</span><span class="mtk1">(data.groupby(</span><span class="mtk26">'SUBDIVISION'</span><span class="mtk1">).size())</span></span><br><span><span></span></span><br></pre><colab-read-only-cell-placeholder style="display: none;"><template shadowrootmode="open"><!----><div><!--?lit$9212114395$-->Start coding or <span tabindex="0" role="button" class="link">generate</span> with AI.</div></template></colab-read-only-cell-placeholder></pre></div><colab-form class="formview vertical layout flex"><div class="widget-area vertical layout"></div></colab-form></div>
    <div class="output" aria-label="Cell 11 output" role="region"><!----> <div class="output-header"> </div>
        <div class="output-content">
          <div class="output-info"><colab-output-info title="Clear output

executed by Ragul Azhagesan
3:37 PM (14 minutes ago)
executed in 0.473s"><template shadowrootmode="open"><!----><md-icon-button title="Code cell output actions" data-aria-label="Code cell output actions" value=""><template shadowrootmode="open" shadowrootdelegatesfocus><!----><button id="button" class="icon-button  standard " aria-label="Code cell output actions">
        <!--?lit$9212114395$--><md-focus-ring part="focus-ring" for="button" aria-hidden="true"><template shadowrootmode="open"><!----></template></md-focus-ring>
        <!--?lit$9212114395$--><md-ripple aria-hidden="true"><template shadowrootmode="open"><!----><div class="surface"></div></template></md-ripple>
        <!--?lit$9212114395$--><span class="icon"><slot></slot></span>
        <!--?lit$9212114395$-->
        <!--?lit$9212114395$--><span class="touch"></span>
        <!--?lit$9212114395$-->
  </button></template>
        <md-icon aria-hidden="true"><template shadowrootmode="open"><!----><slot></slot></template><!--?lit$9212114395$--><svg viewBox="0 0 24 24"><!--?lit$9212114395$--><path d="m15.9 3.07c-4.32 0.0742-8.64-0.0355-13 0.0568-1.37 0.307-1.74 2.1-1.41 3.26 0.469 0.606 1.86 0.384 1.66-0.525 0.0448-0.329-0.183-0.93 0.354-0.766h13.3v1.53h1.71c0.0709-1.13 0.141-2.62-0.968-3.3-0.511-0.264-1.11-0.252-1.67-0.259zm2.94 6.84v4.87c1.62-1.62 3.24-3.24 4.87-4.87h-4.87zm0 0h-1.71v3.43l1.57 1.57c0.32-1.65 0.0556-3.34 0.135-5zm-1.71 3.43v-3.43h-3.43c1.14 1.14 2.29 2.29 3.43 3.43zm1.4 4.27h-1.71v1.48h-13.6v-1.48h-1.71c-0.0473 1.15-0.16 2.72 1.09 3.29 1.47 0.506 3.02 0.0265 4.53 0.192 3.34-0.0051 6.68 0.0336 10-0.0245 1.49-0.366 1.56-2.22 1.42-3.45zm-10.1-1.12c-0.398-0.483-0.796-0.967-1.19-1.45 0.59-0.683 1.18-1.37 1.77-2.05h-8.67v-2h8.67c-0.59-0.683-1.18-1.37-1.77-2.05 0.398-0.483 0.796-0.967 1.19-1.45 1.28 1.5 2.56 3 3.84 4.5-1.28 1.5-2.56 3-3.84 4.5z"></path></svg></md-icon>
      </md-icon-button></template></colab-output-info></div>
          <div class="output-iframe-container">
            <div class="output-iframe-sizer"> <div><div><colab-static-output-renderer tabindex="0" role="group"><div><div class="stream output_text"><pre>Group by:
SUBDIVISION
ANDAMAN &amp; NICOBAR ISLANDS             110
ARUNACHAL PRADESH                      97
ASSAM &amp; MEGHALAYA                     115
BIHAR                                 115
CHHATTISGARH                          115
COASTAL ANDHRA PRADESH                115
COASTAL KARNATAKA                     115
EAST MADHYA PRADESH                   115
EAST RAJASTHAN                        115
EAST UTTAR PRADESH                    115
GANGETIC WEST BENGAL                  115
GUJARAT REGION                        115
HARYANA DELHI &amp; CHANDIGARH            115
HIMACHAL PRADESH                      115
JAMMU &amp; KASHMIR                       115
JHARKHAND                             115
KERALA                                115
KONKAN &amp; GOA                          115
LAKSHADWEEP                           114
MADHYA MAHARASHTRA                    115
MATATHWADA                            115
NAGA MANI MIZO TRIPURA                115
NORTH INTERIOR KARNATAKA              115
ORISSA                                115
PUNJAB                                115
RAYALSEEMA                            115
SAURASHTRA &amp; KUTCH                    115
SOUTH INTERIOR KARNATAKA              115
SUB HIMALAYAN WEST BENGAL &amp; SIKKIM    115
TAMIL NADU                            115
TELANGANA                             115
UTTARAKHAND                           115
VIDARBHA                              115
WEST MADHYA PRADESH                   115
WEST RAJASTHAN                        115
WEST UTTAR PRADESH                    115
dtype: int64
</pre></div></div><div></div></colab-static-output-renderer></div></div></div>
          </div>
        </div></div></div><colab-cell-next-steps><template shadowrootmode="open"><!----></template></colab-cell-next-steps></div></div><div class="add-cell">
      <div class="add-cell-buttons">
        <md-outlined-button class="add-code add-button" data-aria-label="Add code cell
Ctrl+M B" title="Add code cell
Ctrl+M B" value="" has-icon=""><template shadowrootmode="open" shadowrootdelegatesfocus><!---->
      <!--?lit$9212114395$--><div class="outline"></div>
      <div class="background"></div>
      <md-focus-ring part="focus-ring" for="button" aria-hidden="true"><template shadowrootmode="open"><!----></template></md-focus-ring>
      <md-ripple part="ripple" for="button" aria-hidden="true"><template shadowrootmode="open"><!----><div class="surface   "></div></template></md-ripple>
      <!--?lit$9212114395$--><button id="button" class="button" aria-label="Add code cell
Ctrl+M B">
      <!--?lit$9212114395$-->
      <span class="touch"></span>
      <!--?lit$9212114395$--><slot name="icon"></slot>
      <span class="label"><slot></slot></span>
      <!--?lit$9212114395$-->
    
    </button>
    </template>
          <md-icon slot="icon" aria-hidden="true"><template shadowrootmode="open"><!----><slot></slot></template>add</md-icon>
          <!--?lit$9212114395$-->Code
        </md-outlined-button>
        <md-outlined-button class="add-text add-button" data-aria-label="Add text cell" title="Add text cell" value="" has-icon=""><template shadowrootmode="open" shadowrootdelegatesfocus><!---->
      <!--?lit$9212114395$--><div class="outline"></div>
      <div class="background"></div>
      <md-focus-ring part="focus-ring" for="button" aria-hidden="true"><template shadowrootmode="open"><!----></template></md-focus-ring>
      <md-ripple part="ripple" for="button" aria-hidden="true"><template shadowrootmode="open"><!----><div class="surface   "></div></template></md-ripple>
      <!--?lit$9212114395$--><button id="button" class="button" aria-label="Add text cell">
      <!--?lit$9212114395$-->
      <span class="touch"></span>
      <!--?lit$9212114395$--><slot name="icon"></slot>
      <span class="label"><slot></slot></span>
      <!--?lit$9212114395$-->
    
    </button>
    </template>
          <md-icon slot="icon" aria-hidden="true"><template shadowrootmode="open"><!----><slot></slot></template>add</md-icon>
          <!--?lit$9212114395$-->Text
        </md-outlined-button>
        <!--?lit$9212114395$-->
      </div><hr>
    </div></div><div class="cell code code-has-output icon-scrolling" id="cell-KGbFiY_ew784" tabindex="-1" role="region" aria-label="Cell 12: Code cell: " style=""><div class="cell-tag-editor sticky"></div><div class="cell-toolbar sticky"></div><div class="main-content" elevation="0"><div class="cell-contents"><div class="cell-mask"></div><span class="imported-info-area"></span><div class="codecell-input-output">
      <div class="inputarea horizontal layout code">
        <div class="cell-gutter">
          <!-- Bounding range for vertical scrolling of icons -->
          <div class="cell-execution-container">
            <colab-run-button title="Run cell (Ctrl+Enter)
cell executed since last change

executed by Ragul Azhagesan
3:38 PM (23 minutes ago)
executed in 0.46s" role="button" aria-label="Run cell"><template shadowrootmode="open"><!----> <div class="cell-execution error">
      <div class="execution-count"><!--?lit$9212114395$-->[12]</div>
      <div class="cell-execution-indicator"> <!--?lit$9212114395$-->
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
  <!--?lit$9212114395$-->
  <mask id="playSymbolMask">
    <rect width="100%" height="100%" fill="white"></rect>
    <polygon points="10,8 17,12 10,16" fill="black"></polygon>
  </mask>
  <circle cx="12" cy="12" r="7.8" mask="url(#playSymbolMask)" id="filledCircle"></circle>
</svg> </div>
      <!--?lit$9212114395$--><div id="status">
      <md-icon aria-hidden="true"><template shadowrootmode="open"><!----><slot></slot></template><!--?lit$9212114395$-->error</md-icon>
      <div><!--?lit$9212114395$-->0s</div>
    </div>
    </div></template></colab-run-button>
          </div>
        </div>
      <div class="editor flex lazy-editor" style=""><pre class="lazy-virtualized" style="font-size: 14px; line-height: 19px;"><pre class="lazy-gutter"></pre><pre class="monaco-colorized colab colab colab colab colab colab colab colab" data-lang="notebook-python"><span><span class="mtk15">print</span><span class="mtk1">(</span><span class="mtk26">"Co-Variance&nbsp;="</span><span class="mtk1">)</span></span><br><span><span class="mtk15">print</span><span class="mtk1">(data.cov())</span></span><br></pre><colab-read-only-cell-placeholder style="display: none;"><template shadowrootmode="open"><!----><div><!--?lit$9212114395$-->Start coding or <span tabindex="0" role="button" class="link">generate</span> with AI.</div></template></colab-read-only-cell-placeholder></pre></div><colab-form class="formview vertical layout flex"><div class="widget-area vertical layout"></div></colab-form></div>
    <div class="output" aria-label="Cell 12 output" role="region"><!----> <div class="output-header"> </div>
        <div class="output-content">
          <div class="output-info"><colab-output-info title="Clear output

executed by Ragul Azhagesan
3:38 PM (13 minutes ago)
executed in 0.46s"><template shadowrootmode="open"><!----><md-icon-button title="Code cell output actions" data-aria-label="Code cell output actions" value=""><template shadowrootmode="open" shadowrootdelegatesfocus><!----><button id="button" class="icon-button  standard " aria-label="Code cell output actions">
        <!--?lit$9212114395$--><md-focus-ring part="focus-ring" for="button" aria-hidden="true"><template shadowrootmode="open"><!----></template></md-focus-ring>
        <!--?lit$9212114395$--><md-ripple aria-hidden="true"><template shadowrootmode="open"><!----><div class="surface"></div></template></md-ripple>
        <!--?lit$9212114395$--><span class="icon"><slot></slot></span>
        <!--?lit$9212114395$-->
        <!--?lit$9212114395$--><span class="touch"></span>
        <!--?lit$9212114395$-->
  </button></template>
        <md-icon aria-hidden="true"><template shadowrootmode="open"><!----><slot></slot></template><!--?lit$9212114395$--><svg viewBox="0 0 24 24"><!--?lit$9212114395$--><path d="m15.9 3.07c-4.32 0.0742-8.64-0.0355-13 0.0568-1.37 0.307-1.74 2.1-1.41 3.26 0.469 0.606 1.86 0.384 1.66-0.525 0.0448-0.329-0.183-0.93 0.354-0.766h13.3v1.53h1.71c0.0709-1.13 0.141-2.62-0.968-3.3-0.511-0.264-1.11-0.252-1.67-0.259zm2.94 6.84v4.87c1.62-1.62 3.24-3.24 4.87-4.87h-4.87zm0 0h-1.71v3.43l1.57 1.57c0.32-1.65 0.0556-3.34 0.135-5zm-1.71 3.43v-3.43h-3.43c1.14 1.14 2.29 2.29 3.43 3.43zm1.4 4.27h-1.71v1.48h-13.6v-1.48h-1.71c-0.0473 1.15-0.16 2.72 1.09 3.29 1.47 0.506 3.02 0.0265 4.53 0.192 3.34-0.0051 6.68 0.0336 10-0.0245 1.49-0.366 1.56-2.22 1.42-3.45zm-10.1-1.12c-0.398-0.483-0.796-0.967-1.19-1.45 0.59-0.683 1.18-1.37 1.77-2.05h-8.67v-2h8.67c-0.59-0.683-1.18-1.37-1.77-2.05 0.398-0.483 0.796-0.967 1.19-1.45 1.28 1.5 2.56 3 3.84 4.5-1.28 1.5-2.56 3-3.84 4.5z"></path></svg></md-icon>
      </md-icon-button></template></colab-output-info></div>
          <div class="output-iframe-container">
            <div class="output-iframe-sizer"> <div style=""><div class="outputview" style="height: 321px;"><colab-dom-lifecycle-events style="display: none;"></colab-dom-lifecycle-events><iframe allow="" sandbox="allow-downloads allow-forms allow-pointer-lock allow-popups allow-same-origin allow-scripts allow-storage-access-by-user-activation allow-popups-to-escape-sandbox" src="./rainfall_files/outputframe.html" class="" style="height: 321px;"></iframe></div></div></div>
          </div>
        </div></div></div><colab-cell-next-steps><template shadowrootmode="open"><!----></template></colab-cell-next-steps></div></div><div class="add-cell">
      <div class="add-cell-buttons">
        <md-outlined-button class="add-code add-button" data-aria-label="Add code cell
Ctrl+M B" title="Add code cell
Ctrl+M B" value="" has-icon=""><template shadowrootmode="open" shadowrootdelegatesfocus><!---->
      <!--?lit$9212114395$--><div class="outline"></div>
      <div class="background"></div>
      <md-focus-ring part="focus-ring" for="button" aria-hidden="true"><template shadowrootmode="open"><!----></template></md-focus-ring>
      <md-ripple part="ripple" for="button" aria-hidden="true"><template shadowrootmode="open"><!----><div class="surface   "></div></template></md-ripple>
      <!--?lit$9212114395$--><button id="button" class="button" aria-label="Add code cell
Ctrl+M B">
      <!--?lit$9212114395$-->
      <span class="touch"></span>
      <!--?lit$9212114395$--><slot name="icon"></slot>
      <span class="label"><slot></slot></span>
      <!--?lit$9212114395$-->
    
    </button>
    </template>
          <md-icon slot="icon" aria-hidden="true"><template shadowrootmode="open"><!----><slot></slot></template>add</md-icon>
          <!--?lit$9212114395$-->Code
        </md-outlined-button>
        <md-outlined-button class="add-text add-button" data-aria-label="Add text cell" title="Add text cell" value="" has-icon=""><template shadowrootmode="open" shadowrootdelegatesfocus><!---->
      <!--?lit$9212114395$--><div class="outline"></div>
      <div class="background"></div>
      <md-focus-ring part="focus-ring" for="button" aria-hidden="true"><template shadowrootmode="open"><!----></template></md-focus-ring>
      <md-ripple part="ripple" for="button" aria-hidden="true"><template shadowrootmode="open"><!----><div class="surface   "></div></template></md-ripple>
      <!--?lit$9212114395$--><button id="button" class="button" aria-label="Add text cell">
      <!--?lit$9212114395$-->
      <span class="touch"></span>
      <!--?lit$9212114395$--><slot name="icon"></slot>
      <span class="label"><slot></slot></span>
      <!--?lit$9212114395$-->
    
    </button>
    </template>
          <md-icon slot="icon" aria-hidden="true"><template shadowrootmode="open"><!----><slot></slot></template>add</md-icon>
          <!--?lit$9212114395$-->Text
        </md-outlined-button>
        <!--?lit$9212114395$-->
      </div><hr>
    </div></div><div class="cell code code-has-output icon-scrolling" id="cell-YVekVw1Fw3z8" tabindex="-1" role="region" aria-label="Cell 13: Code cell: " style=""><div class="cell-tag-editor sticky"></div><div class="cell-toolbar sticky"></div><div class="main-content" elevation="0"><div class="cell-contents"><div class="cell-mask"></div><span class="imported-info-area"></span><div class="codecell-input-output">
      <div class="inputarea horizontal layout code">
        <div class="cell-gutter">
          <!-- Bounding range for vertical scrolling of icons -->
          <div class="cell-execution-container">
            <colab-run-button title="Run cell (Ctrl+Enter)
cell executed since last change

executed by Ragul Azhagesan
3:38 PM (24 minutes ago)
executed in 0.451s" role="button" aria-label="Run cell"><template shadowrootmode="open"><!----> <div class="cell-execution error">
      <div class="execution-count"><!--?lit$9212114395$-->[11]</div>
      <div class="cell-execution-indicator"> <!--?lit$9212114395$-->
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
  <!--?lit$9212114395$-->
  <mask id="playSymbolMask">
    <rect width="100%" height="100%" fill="white"></rect>
    <polygon points="10,8 17,12 10,16" fill="black"></polygon>
  </mask>
  <circle cx="12" cy="12" r="7.8" mask="url(#playSymbolMask)" id="filledCircle"></circle>
</svg> </div>
      <!--?lit$9212114395$--><div id="status">
      <md-icon aria-hidden="true"><template shadowrootmode="open"><!----><slot></slot></template><!--?lit$9212114395$-->error</md-icon>
      <div><!--?lit$9212114395$-->0s</div>
    </div>
    </div></template></colab-run-button>
          </div>
        </div>
      <div class="editor flex lazy-editor" style=""><pre class="lazy-virtualized" style="font-size: 14px; line-height: 19px;"><pre class="lazy-gutter"></pre><pre class="monaco-colorized colab colab colab colab colab colab colab colab" data-lang="notebook-python"><span><span class="mtk15">print</span><span class="mtk1">(</span><span class="mtk26">"Co-Variance&nbsp;="</span><span class="mtk1">)</span></span><br><span><span class="mtk15">print</span><span class="mtk1">(data.cov())</span></span><br><span><span></span></span><br><span><span class="mtk15">print</span><span class="mtk1">(</span><span class="mtk26">"Co-Relation&nbsp;="</span><span class="mtk1">)</span></span><br><span><span class="mtk15">print</span><span class="mtk1">(data.corr())</span></span><br><span><span></span></span><br></pre><colab-read-only-cell-placeholder style="display: none;"><template shadowrootmode="open"><!----><div><!--?lit$9212114395$-->Start coding or <span tabindex="0" role="button" class="link">generate</span> with AI.</div></template></colab-read-only-cell-placeholder></pre></div><colab-form class="formview vertical layout flex"><div class="widget-area vertical layout"></div></colab-form></div>
    <div class="output" aria-label="Cell 13 output" role="region"><!----> <div class="output-header"> </div>
        <div class="output-content">
          <div class="output-info"><colab-output-info title="Clear output

executed by Ragul Azhagesan
3:38 PM (14 minutes ago)
executed in 0.451s"><template shadowrootmode="open"><!----><md-icon-button title="Code cell output actions" data-aria-label="Code cell output actions" value=""><template shadowrootmode="open" shadowrootdelegatesfocus><!----><button id="button" class="icon-button  standard " aria-label="Code cell output actions">
        <!--?lit$9212114395$--><md-focus-ring part="focus-ring" for="button" aria-hidden="true"><template shadowrootmode="open"><!----></template></md-focus-ring>
        <!--?lit$9212114395$--><md-ripple aria-hidden="true"><template shadowrootmode="open"><!----><div class="surface"></div></template></md-ripple>
        <!--?lit$9212114395$--><span class="icon"><slot></slot></span>
        <!--?lit$9212114395$-->
        <!--?lit$9212114395$--><span class="touch"></span>
        <!--?lit$9212114395$-->
  </button></template>
        <md-icon aria-hidden="true"><template shadowrootmode="open"><!----><slot></slot></template><!--?lit$9212114395$--><svg viewBox="0 0 24 24"><!--?lit$9212114395$--><path d="m15.9 3.07c-4.32 0.0742-8.64-0.0355-13 0.0568-1.37 0.307-1.74 2.1-1.41 3.26 0.469 0.606 1.86 0.384 1.66-0.525 0.0448-0.329-0.183-0.93 0.354-0.766h13.3v1.53h1.71c0.0709-1.13 0.141-2.62-0.968-3.3-0.511-0.264-1.11-0.252-1.67-0.259zm2.94 6.84v4.87c1.62-1.62 3.24-3.24 4.87-4.87h-4.87zm0 0h-1.71v3.43l1.57 1.57c0.32-1.65 0.0556-3.34 0.135-5zm-1.71 3.43v-3.43h-3.43c1.14 1.14 2.29 2.29 3.43 3.43zm1.4 4.27h-1.71v1.48h-13.6v-1.48h-1.71c-0.0473 1.15-0.16 2.72 1.09 3.29 1.47 0.506 3.02 0.0265 4.53 0.192 3.34-0.0051 6.68 0.0336 10-0.0245 1.49-0.366 1.56-2.22 1.42-3.45zm-10.1-1.12c-0.398-0.483-0.796-0.967-1.19-1.45 0.59-0.683 1.18-1.37 1.77-2.05h-8.67v-2h8.67c-0.59-0.683-1.18-1.37-1.77-2.05 0.398-0.483 0.796-0.967 1.19-1.45 1.28 1.5 2.56 3 3.84 4.5-1.28 1.5-2.56 3-3.84 4.5z"></path></svg></md-icon>
      </md-icon-button></template></colab-output-info></div>
          <div class="output-iframe-container">
            <div class="output-iframe-sizer"> <div style=""><div class="outputview" style="height: 373px;"><colab-dom-lifecycle-events style="display: none;"></colab-dom-lifecycle-events><iframe allow="" sandbox="allow-downloads allow-forms allow-pointer-lock allow-popups allow-same-origin allow-scripts allow-storage-access-by-user-activation allow-popups-to-escape-sandbox" src="./rainfall_files/outputframe(1).html" class="" style="height: 373px;"></iframe></div></div></div>
          </div>
        </div></div></div><colab-cell-next-steps><template shadowrootmode="open"><!----></template></colab-cell-next-steps></div></div><div class="add-cell">
      <hr>
    </div></div><div class="cell code code-has-output icon-scrolling" id="cell-6Sbuu40uxSUo" tabindex="-1" role="region" aria-label="Cell 14: Code cell: " style=""><div class="cell-tag-editor sticky"></div><div class="cell-toolbar sticky"></div><div class="main-content" elevation="0"><div class="cell-contents"><div class="cell-mask"></div><span class="imported-info-area"></span><div class="codecell-input-output">
      <div class="inputarea horizontal layout code">
        <div class="cell-gutter">
          <!-- Bounding range for vertical scrolling of icons -->
          <div class="cell-execution-container">
            <colab-run-button title="Run cell (Ctrl+Enter)
cell executed since last change

executed by Ragul Azhagesan
3:40 PM (22 minutes ago)
executed in 0.574s" role="button" aria-label="Run cell"><template shadowrootmode="open"><!----> <div class="cell-execution">
      <div class="execution-count"><!--?lit$9212114395$-->[13]</div>
      <div class="cell-execution-indicator"> <!--?lit$9212114395$-->
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
  <!--?lit$9212114395$-->
  <mask id="playSymbolMask">
    <rect width="100%" height="100%" fill="white"></rect>
    <polygon points="10,8 17,12 10,16" fill="black"></polygon>
  </mask>
  <circle cx="12" cy="12" r="7.8" mask="url(#playSymbolMask)" id="filledCircle"></circle>
</svg> </div>
      <!--?lit$9212114395$--><div id="status">
      <md-icon aria-hidden="true"><template shadowrootmode="open"><!----><slot></slot></template><!--?lit$9212114395$--><svg viewBox="0 0 24 24"><!--?lit$9212114395$--><path d="M9 16.17L4.83 12l-1.42 1.41L9 19 21 7l-1.41-1.41z"></path></svg></md-icon>
      <div><!--?lit$9212114395$-->0s</div>
    </div>
    </div></template></colab-run-button>
          </div>
        </div>
      <div class="editor flex lazy-editor" style=""><pre class="lazy-virtualized" style="font-size: 14px; line-height: 19px;"><pre class="lazy-gutter"></pre><pre class="monaco-colorized colab colab colab colab colab colab colab" data-lang="notebook-python"><span><span class="mtk15">print</span><span class="mtk1">(</span><span class="mtk26">"Co-Variance&nbsp;="</span><span class="mtk1">)</span></span><br><span><span class="mtk15">print</span><span class="mtk1">(data[numeric_columns].cov())</span></span><br><span><span></span></span><br><span><span class="mtk15">print</span><span class="mtk1">(</span><span class="mtk26">"Co-Relation&nbsp;="</span><span class="mtk1">)</span></span><br><span><span class="mtk15">print</span><span class="mtk1">(data[numeric_columns].corr())</span></span><br><span><span></span></span><br></pre><colab-read-only-cell-placeholder style="display: none;"><template shadowrootmode="open"><!----><div><!--?lit$9212114395$-->Start coding or <span tabindex="0" role="button" class="link">generate</span> with AI.</div></template></colab-read-only-cell-placeholder></pre></div><colab-form class="formview vertical layout flex"><div class="widget-area vertical layout"></div></colab-form></div>
    <div class="output" aria-label="Cell 14 output" role="region"><!----> <div class="output-header"> </div>
        <div class="output-content">
          <div class="output-info"><colab-output-info title="Clear output

executed by Ragul Azhagesan
3:40 PM (12 minutes ago)
executed in 0.574s"><template shadowrootmode="open"><!----><md-icon-button title="Code cell output actions" data-aria-label="Code cell output actions" value=""><template shadowrootmode="open" shadowrootdelegatesfocus><!----><button id="button" class="icon-button  standard " aria-label="Code cell output actions">
        <!--?lit$9212114395$--><md-focus-ring part="focus-ring" for="button" aria-hidden="true"><template shadowrootmode="open"><!----></template></md-focus-ring>
        <!--?lit$9212114395$--><md-ripple aria-hidden="true"><template shadowrootmode="open"><!----><div class="surface   "></div></template></md-ripple>
        <!--?lit$9212114395$--><span class="icon"><slot></slot></span>
        <!--?lit$9212114395$-->
        <!--?lit$9212114395$--><span class="touch"></span>
        <!--?lit$9212114395$-->
  </button></template>
        <md-icon aria-hidden="true"><template shadowrootmode="open"><!----><slot></slot></template><!--?lit$9212114395$--><svg viewBox="0 0 24 24"><!--?lit$9212114395$--><path d="m15.9 3.07c-4.32 0.0742-8.64-0.0355-13 0.0568-1.37 0.307-1.74 2.1-1.41 3.26 0.469 0.606 1.86 0.384 1.66-0.525 0.0448-0.329-0.183-0.93 0.354-0.766h13.3v1.53h1.71c0.0709-1.13 0.141-2.62-0.968-3.3-0.511-0.264-1.11-0.252-1.67-0.259zm2.94 6.84v4.87c1.62-1.62 3.24-3.24 4.87-4.87h-4.87zm0 0h-1.71v3.43l1.57 1.57c0.32-1.65 0.0556-3.34 0.135-5zm-1.71 3.43v-3.43h-3.43c1.14 1.14 2.29 2.29 3.43 3.43zm1.4 4.27h-1.71v1.48h-13.6v-1.48h-1.71c-0.0473 1.15-0.16 2.72 1.09 3.29 1.47 0.506 3.02 0.0265 4.53 0.192 3.34-0.0051 6.68 0.0336 10-0.0245 1.49-0.366 1.56-2.22 1.42-3.45zm-10.1-1.12c-0.398-0.483-0.796-0.967-1.19-1.45 0.59-0.683 1.18-1.37 1.77-2.05h-8.67v-2h8.67c-0.59-0.683-1.18-1.37-1.77-2.05 0.398-0.483 0.796-0.967 1.19-1.45 1.28 1.5 2.56 3 3.84 4.5-1.28 1.5-2.56 3-3.84 4.5z"></path></svg></md-icon>
      </md-icon-button></template></colab-output-info></div>
          <div class="output-iframe-container">
            <div class="output-iframe-sizer"> <div><div><colab-static-output-renderer tabindex="0" role="group"><div><div class="stream output_text"><pre>Co-Variance =
                YEAR          JAN          FEB           MAR           APR  \
YEAR     1098.319127   -62.525455   -26.333846     31.608776     17.985597   
JAN       -62.525455  1126.880700   549.299548    627.375837    475.344306   
FEB       -26.333846   549.299548  1288.551221    974.300386    892.111938   
MAR        31.608776   627.375837   974.300386   2201.972143   1766.214414   
APR        17.985597   475.344306   892.111938   1766.214414   4596.594854   
MAY        14.668989   535.377197   896.648721   2094.072720   5433.121872   
JUN      -105.646427  -265.334667   283.409286   1819.002965   7239.347234   
JUL      -144.815256  -465.128448   156.524886   1227.377060   4883.946095   
AUG        40.268753    75.536029   488.385320   1195.021166   3275.971621   
SEP       -29.893921   110.216877   388.537697   1133.597551   3507.500523   
OCT         7.922814    41.252990   -16.324506    401.044464   2478.380760   
NOV       -42.624271   154.517515   -57.342083     28.337749    767.024409   
DEC       -26.804831   311.215537   200.895960    270.309451    379.022457   
ANNUAL   -239.492392  3182.200682  5831.636967  13551.372253  34892.913572   
Jan-Feb   -87.619668  1675.112786  1837.200844   1601.188055   1367.102182   
Mar-May    70.841300  1632.972340  2754.690073   6057.993672  11751.856167   
Jun-Sep  -220.389375  -537.708253  1291.239831   5354.542547  18800.990715   
Oct-Dec   -56.011703   507.405040   130.324910    702.446620   3611.891111   

                  MAY            JUN            JUL            AUG  \
YEAR        14.668989    -105.646427    -144.815256      40.268753   
JAN        535.377197    -265.334667    -465.128448      75.536029   
FEB        896.648721     283.409286     156.524886     488.385320   
MAR       2094.072720    1819.002965    1227.377060    1195.021166   
APR       5433.121872    7239.347234    4883.946095    3275.971621   
MAY      15175.769642   16377.076471   10998.210205    7649.136573   
JUN      16377.076471   55022.202897   46742.156704   28995.034435   
JUL      10998.210205   46742.156704   72528.044881   34865.908024   
AUG       7649.136573   28995.034435   34865.908024   35599.654379   
SEP       8195.841594   17494.413820   18689.175537   12689.249607   
OCT       6466.235613   11407.373968    8011.623303    4698.672264   
NOV       2957.825540    3683.106889     787.996420     225.143088   
DEC       1297.885757     878.194764    -221.331169      13.095578   
ANNUAL   76832.142562  186947.838753  196502.700078  128005.124370   
Jan-Feb   1430.274263      14.101413    -304.676604     568.034975   
Mar-May  22630.231857   25297.228770   16923.240288   12061.613866   
Jun-Sep  43086.245286  147777.656772  172787.647754  111996.536530   
Oct-Dec  10689.487044   15929.294431    8543.095960    4889.354198   

                  SEP           OCT           NOV          DEC         ANNUAL  \
YEAR       -29.893921      7.922814    -42.624271   -26.804831    -239.492392   
JAN        110.216877     41.252990    154.517515   311.215537    3182.200682   
FEB        388.537697    -16.324506    -57.342083   200.895960    5831.636967   
MAR       1133.597551    401.044464     28.337749   270.309451   13551.372253   
APR       3507.500523   2478.380760    767.024409   379.022457   34892.913572   
MAY       8195.841594   6466.235613   2957.825540  1297.885757   76832.142562   
JUN      17494.413820  11407.373968   3683.106889   878.194764  186947.838753   
JUL      18689.175537   8011.623303    787.996420  -221.331169  196502.700078   
AUG      12689.249607   4698.672264    225.143088    13.095578  128005.124370   
SEP      18308.685373   5160.065598   1423.645365   625.337757   86880.184870   
OCT       5160.065598   9887.210250   3255.412215  1181.840586   52370.830566   
NOV       1423.645365   3255.412215   4705.074413  1306.412604   18933.853987   
DEC        625.337757   1181.840586   1306.412604  1790.821416    7849.560149   
ANNUAL   86880.184870  52370.830566  18933.853987  7849.560149  811776.910930   
Jan-Feb    497.514696     22.024800     92.528943   512.180397    9013.688346   
Mar-May  12753.170806   9323.753288   3734.819277  1929.952379  125275.096761   
Jun-Sep  67119.849971  29204.838323   6116.134359  1265.311019  598334.762240   
Oct-Dec   7199.381976  14283.355731   9219.400872  4279.018309   79154.756536   

             Jan-Feb        Mar-May        Jun-Sep       Oct-Dec  
YEAR      -87.619668      70.841300    -220.389375    -56.011703  
JAN      1675.112786    1632.972340    -537.708253    507.405040  
FEB      1837.200844    2754.690073    1291.239831    130.324910  
MAR      1601.188055    6057.993672    5354.542547    702.446620  
APR      1367.102182   11751.856167   18800.990715   3611.891111  
MAY      1430.274263   22630.231857   43086.245286  10689.487044  
JUN        14.101413   25297.228770  147777.656772  15929.294431  
JUL      -304.676604   16923.240288  172787.647754   8543.095960  
AUG       568.034975   12061.613866  111996.536530   4889.354198  
SEP       497.514696   12753.170806   67119.849971   7199.381976  
OCT        22.024800    9323.753288   29204.838323  14283.355731  
NOV        92.528943    3734.819277    6116.134359   9219.400872  
DEC       512.180397    1929.952379    1265.311019   4279.018309  
ANNUAL   9013.688346  125275.096761  598334.762240  79154.756536  
Jan-Feb  3512.342973    4385.069178     756.357901    630.248247  
Mar-May  4385.069178   40439.879705   66774.885424  14946.235220  
Jun-Sep   756.357901   66774.885424  499680.824907  36465.214924  
Oct-Dec   630.248247   14946.235220   36465.214924  27781.806104  
Co-Relation =
             YEAR       JAN       FEB       MAR       APR       MAY       JUN  \
YEAR     1.000000 -0.056202 -0.022136  0.020325  0.008005  0.003593 -0.013590   
JAN     -0.056202  1.000000  0.455847  0.398275  0.208858  0.129463 -0.033697   
FEB     -0.022136  0.455847  1.000000  0.578410  0.366564  0.202766  0.033658   
MAR      0.020325  0.398275  0.578410  1.000000  0.555162  0.362252  0.165256   
APR      0.008005  0.208858  0.366564  0.555162  1.000000  0.650513  0.455211   
MAY      0.003593  0.129463  0.202766  0.362252  0.650513  1.000000  0.566751   
JUN     -0.013590 -0.033697  0.033658  0.165256  0.455211  0.566751  1.000000   
JUL     -0.016225 -0.051449  0.016191  0.097122  0.267485  0.331508  0.739923   
AUG      0.006440  0.011926  0.072109  0.134973  0.256094  0.329090  0.655136   
SEP     -0.006666  0.024265  0.079993  0.178535  0.382341  0.491688  0.551191   
OCT      0.002404  0.012359 -0.004574  0.085951  0.367632  0.527885  0.489080   
NOV     -0.018750  0.067105 -0.023288  0.008804  0.164933  0.350037  0.228909   
DEC     -0.019113  0.219077  0.132250  0.136122  0.132105  0.248963  0.088470   
ANNUAL  -0.008021  0.105213  0.180311  0.320523  0.571217  0.692228  0.884572   
Jan-Feb -0.044611  0.841989  0.863589  0.575755  0.340239  0.195905  0.001014   
Mar-May  0.010630  0.241899  0.381608  0.641975  0.861953  0.913500  0.536289   
Jun-Sep -0.009408 -0.022660  0.050887  0.161425  0.392298  0.494785  0.891237   
Oct-Dec -0.010140  0.090685  0.021782  0.089811  0.319622  0.520597  0.407425   

              JUL       AUG       SEP       OCT       NOV       DEC    ANNUAL  \
YEAR    -0.016225  0.006440 -0.006666  0.002404 -0.018750 -0.019113 -0.008021   
JAN     -0.051449  0.011926  0.024265  0.012359  0.067105  0.219077  0.105213   
FEB      0.016191  0.072109  0.079993 -0.004574 -0.023288  0.132250  0.180311   
MAR      0.097122  0.134973  0.178535  0.085951  0.008804  0.136122  0.320523   
APR      0.267485  0.256094  0.382341  0.367632  0.164933  0.132105  0.571217   
MAY      0.331508  0.329090  0.491688  0.527885  0.350037  0.248963  0.692228   
JUN      0.739923  0.655136  0.551191  0.489080  0.228909  0.088470  0.884572   
JUL      1.000000  0.686160  0.512872  0.299179  0.042657 -0.019421  0.809836   
AUG      0.686160  1.000000  0.497032  0.250447  0.017396  0.001640  0.752985   
SEP      0.512872  0.497032  1.000000  0.383522  0.153388  0.109209  0.712646   
OCT      0.299179  0.250447  0.383522  1.000000  0.477294  0.280864  0.584567   
NOV      0.042657  0.017396  0.153388  0.477294  1.000000  0.450061  0.306364   
DEC     -0.019421  0.001640  0.109209  0.280864  0.450061  1.000000  0.205874   
ANNUAL   0.809836  0.752985  0.712646  0.584567  0.306364  0.205874  1.000000   
Jan-Feb -0.019089  0.050799  0.062041  0.003737  0.022761  0.204220  0.168805   
Mar-May  0.312482  0.317891  0.468689  0.466282  0.270758  0.226786  0.691419   
Jun-Sep  0.907639  0.839722  0.701740  0.415501  0.126138  0.042298  0.939463   
Oct-Dec  0.190319  0.155471  0.319217  0.861813  0.806379  0.606649  0.527082   

          Jan-Feb   Mar-May   Jun-Sep   Oct-Dec  
YEAR    -0.044611  0.010630 -0.009408 -0.010140  
JAN      0.841989  0.241899 -0.022660  0.090685  
FEB      0.863589  0.381608  0.050887  0.021782  
MAR      0.575755  0.641975  0.161425  0.089811  
APR      0.340239  0.861953  0.392298  0.319622  
MAY      0.195905  0.913500  0.494785  0.520597  
JUN      0.001014  0.536289  0.891237  0.407425  
JUL     -0.019089  0.312482  0.907639  0.190319  
AUG      0.050799  0.317891  0.839722  0.155471  
SEP      0.062041  0.468689  0.701740  0.319217  
OCT      0.003737  0.466282  0.415501  0.861813  
NOV      0.022761  0.270758  0.126138  0.806379  
DEC      0.204220  0.226786  0.042298  0.606649  
ANNUAL   0.168805  0.691419  0.939463  0.527082  
Jan-Feb  1.000000  0.367937  0.018054  0.063802  
Mar-May  0.367937  1.000000  0.469745  0.445909  
Jun-Sep  0.018054  0.469745  1.000000  0.309494  
Oct-Dec  0.063802  0.445909  0.309494  1.000000  
</pre></div></div><div></div></colab-static-output-renderer></div></div></div>
          </div>
        </div></div></div><colab-cell-next-steps><template shadowrootmode="open"><!----></template></colab-cell-next-steps></div></div><div class="add-cell">
      <hr>
    </div></div><div class="cell code code-has-output icon-scrolling" id="cell-umQu41rMxbLQ" tabindex="-1" role="region" aria-label="Cell 15: Code cell: " style=""><div class="cell-tag-editor sticky"></div><div class="cell-toolbar sticky"></div><div class="main-content" elevation="0"><div class="cell-contents"><div class="cell-mask"></div><span class="imported-info-area"></span><div class="codecell-input-output">
      <div class="inputarea horizontal layout code">
        <div class="cell-gutter">
          <!-- Bounding range for vertical scrolling of icons -->
          <div class="cell-execution-container">
            <colab-run-button title="Run cell (Ctrl+Enter)
cell executed since last change

executed by Ragul Azhagesan
3:40 PM (21 minutes ago)
executed in 1.323s" role="button" aria-label="Run cell"><template shadowrootmode="open"><!----> <div class="cell-execution">
      <div class="execution-count"><!--?lit$9212114395$-->[14]</div>
      <div class="cell-execution-indicator"> <!--?lit$9212114395$-->
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
  <!--?lit$9212114395$-->
  <mask id="playSymbolMask">
    <rect width="100%" height="100%" fill="white"></rect>
    <polygon points="10,8 17,12 10,16" fill="black"></polygon>
  </mask>
  <circle cx="12" cy="12" r="7.8" mask="url(#playSymbolMask)" id="filledCircle"></circle>
</svg> </div>
      <!--?lit$9212114395$--><div id="status">
      <md-icon aria-hidden="true"><template shadowrootmode="open"><!----><slot></slot></template><!--?lit$9212114395$--><svg viewBox="0 0 24 24"><!--?lit$9212114395$--><path d="M9 16.17L4.83 12l-1.42 1.41L9 19 21 7l-1.41-1.41z"></path></svg></md-icon>
      <div><!--?lit$9212114395$-->1s</div>
    </div>
    </div></template></colab-run-button>
          </div>
        </div>
      <div class="editor flex lazy-editor" style=""><pre class="lazy-virtualized" style="font-size: 14px; line-height: 19px;"><pre class="lazy-gutter"></pre><pre class="monaco-colorized colab colab colab colab colab colab" data-lang="notebook-python"><span><span class="mtk1">corr_cols&nbsp;=&nbsp;data[numeric_columns].corr()[</span><span class="mtk26">'ANNUAL'</span><span class="mtk1">].sort_values()[::</span><span class="mtk12">-1</span><span class="mtk1">]</span></span><br><span><span class="mtk15">print</span><span class="mtk1">(</span><span class="mtk26">"Index&nbsp;of&nbsp;correlation&nbsp;columns:"</span><span class="mtk1">,&nbsp;corr_cols.index)</span></span><br><span><span></span></span><br><span><span class="mtk15">print</span><span class="mtk1">(</span><span class="mtk26">"Scatter&nbsp;plot&nbsp;of&nbsp;annual&nbsp;and&nbsp;January&nbsp;attributes"</span><span class="mtk1">)</span></span><br><span><span class="mtk1">plt.scatter(data[</span><span class="mtk26">'ANNUAL'</span><span class="mtk1">],&nbsp;data[</span><span class="mtk26">'JAN'</span><span class="mtk1">])</span></span><br><span><span class="mtk1">plt.xlabel(</span><span class="mtk26">'Annual&nbsp;Rainfall'</span><span class="mtk1">)</span></span><br><span><span class="mtk1">plt.ylabel(</span><span class="mtk26">'January&nbsp;Rainfall'</span><span class="mtk1">)</span></span><br><span><span class="mtk1">plt.title(</span><span class="mtk26">'Scatter&nbsp;Plot&nbsp;of&nbsp;Annual&nbsp;vs&nbsp;January&nbsp;Rainfall'</span><span class="mtk1">)</span></span><br><span><span class="mtk1">plt.show()</span></span><br></pre><colab-read-only-cell-placeholder style="display: none;"><template shadowrootmode="open"><!----><div><!--?lit$9212114395$-->Start coding or <span tabindex="0" role="button" class="link">generate</span> with AI.</div></template></colab-read-only-cell-placeholder></pre></div><colab-form class="formview vertical layout flex"><div class="widget-area vertical layout"></div></colab-form></div>
    <div class="output" aria-label="Cell 15 output" role="region"><!----> <div class="output-header"> </div>
        <div class="output-content">
          <div class="output-info"><colab-output-info title="Clear output

executed by Ragul Azhagesan
3:40 PM (11 minutes ago)
executed in 1.323s"><template shadowrootmode="open"><!----><md-icon-button title="Code cell output actions" data-aria-label="Code cell output actions" value=""><template shadowrootmode="open" shadowrootdelegatesfocus><!----><button id="button" class="icon-button  standard " aria-label="Code cell output actions">
        <!--?lit$9212114395$--><md-focus-ring part="focus-ring" for="button" aria-hidden="true"><template shadowrootmode="open"><!----></template></md-focus-ring>
        <!--?lit$9212114395$--><md-ripple aria-hidden="true"><template shadowrootmode="open"><!----><div class="surface   "></div></template></md-ripple>
        <!--?lit$9212114395$--><span class="icon"><slot></slot></span>
        <!--?lit$9212114395$-->
        <!--?lit$9212114395$--><span class="touch"></span>
        <!--?lit$9212114395$-->
  </button></template>
        <md-icon aria-hidden="true"><template shadowrootmode="open"><!----><slot></slot></template><!--?lit$9212114395$--><svg viewBox="0 0 24 24"><!--?lit$9212114395$--><path d="m15.9 3.07c-4.32 0.0742-8.64-0.0355-13 0.0568-1.37 0.307-1.74 2.1-1.41 3.26 0.469 0.606 1.86 0.384 1.66-0.525 0.0448-0.329-0.183-0.93 0.354-0.766h13.3v1.53h1.71c0.0709-1.13 0.141-2.62-0.968-3.3-0.511-0.264-1.11-0.252-1.67-0.259zm2.94 6.84v4.87c1.62-1.62 3.24-3.24 4.87-4.87h-4.87zm0 0h-1.71v3.43l1.57 1.57c0.32-1.65 0.0556-3.34 0.135-5zm-1.71 3.43v-3.43h-3.43c1.14 1.14 2.29 2.29 3.43 3.43zm1.4 4.27h-1.71v1.48h-13.6v-1.48h-1.71c-0.0473 1.15-0.16 2.72 1.09 3.29 1.47 0.506 3.02 0.0265 4.53 0.192 3.34-0.0051 6.68 0.0336 10-0.0245 1.49-0.366 1.56-2.22 1.42-3.45zm-10.1-1.12c-0.398-0.483-0.796-0.967-1.19-1.45 0.59-0.683 1.18-1.37 1.77-2.05h-8.67v-2h8.67c-0.59-0.683-1.18-1.37-1.77-2.05 0.398-0.483 0.796-0.967 1.19-1.45 1.28 1.5 2.56 3 3.84 4.5-1.28 1.5-2.56 3-3.84 4.5z"></path></svg></md-icon>
      </md-icon-button></template></colab-output-info></div>
          <div class="output-iframe-container">
            <div class="output-iframe-sizer"> <div style=""><div class="outputview" style="height: 559px;"><colab-dom-lifecycle-events style="display: none;"></colab-dom-lifecycle-events><iframe allow="" sandbox="allow-downloads allow-forms allow-pointer-lock allow-popups allow-same-origin allow-scripts allow-storage-access-by-user-activation allow-popups-to-escape-sandbox" src="./rainfall_files/outputframe(2).html" class="" style="height: 559px;"></iframe></div></div></div>
          </div>
        </div></div></div><colab-cell-next-steps><template shadowrootmode="open"><!----></template></colab-cell-next-steps></div></div><div class="add-cell">
      <hr>
    </div></div><div class="cell code code-has-output icon-scrolling" id="cell-yqdwAZ67xk2m" tabindex="-1" role="region" aria-label="Cell 16: Code cell: " style=""><div class="cell-tag-editor sticky"></div><div class="cell-toolbar sticky"></div><div class="main-content" elevation="0"><div class="cell-contents"><div class="cell-mask"></div><span class="imported-info-area"></span><div class="codecell-input-output">
      <div class="inputarea horizontal layout code">
        <div class="cell-gutter">
          <!-- Bounding range for vertical scrolling of icons -->
          <div class="cell-execution-container">
            <colab-run-button title="Run cell (Ctrl+Enter)
cell executed since last change

executed by Ragul Azhagesan
3:41 PM (20 minutes ago)
executed in 0.53s" role="button" aria-label="Run cell"><template shadowrootmode="open"><!----> <div class="cell-execution">
      <div class="execution-count"><!--?lit$9212114395$-->[15]</div>
      <div class="cell-execution-indicator"> <!--?lit$9212114395$-->
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
  <!--?lit$9212114395$-->
  <mask id="playSymbolMask">
    <rect width="100%" height="100%" fill="white"></rect>
    <polygon points="10,8 17,12 10,16" fill="black"></polygon>
  </mask>
  <circle cx="12" cy="12" r="7.8" mask="url(#playSymbolMask)" id="filledCircle"></circle>
</svg> </div>
      <!--?lit$9212114395$--><div id="status">
      <md-icon aria-hidden="true"><template shadowrootmode="open"><!----><slot></slot></template><!--?lit$9212114395$--><svg viewBox="0 0 24 24"><!--?lit$9212114395$--><path d="M9 16.17L4.83 12l-1.42 1.41L9 19 21 7l-1.41-1.41z"></path></svg></md-icon>
      <div><!--?lit$9212114395$-->0s</div>
    </div>
    </div></template></colab-run-button>
          </div>
        </div>
      <div class="editor flex lazy-editor" style=""><pre class="lazy-virtualized" style="font-size: 14px; line-height: 19px;"><pre class="lazy-gutter"></pre><pre class="monaco-colorized colab colab colab colab colab colab" data-lang="notebook-python"><span><span class="mtk15">print</span><span class="mtk1">(</span><span class="mtk26">"Box&nbsp;Plot&nbsp;of&nbsp;annual&nbsp;rainfall&nbsp;data&nbsp;in&nbsp;years&nbsp;1901-20</span><span class="mtk26">15"</span><span class="mtk1">)</span></span><br><span><span class="mtk1">data[</span><span class="mtk26">'ANNUAL'</span><span class="mtk1">].plot(kind=</span><span class="mtk26">'box'</span><span class="mtk1">,&nbsp;sharex=</span><span class="mtk6">False</span><span class="mtk1">,&nbsp;sharey=</span><span class="mtk6">False</span><span class="mtk1">)</span></span><br><span><span class="mtk1">plt.title(</span><span class="mtk26">'Box&nbsp;Plot&nbsp;of&nbsp;Annual&nbsp;Rainfall&nbsp;(1901-2015)'</span><span class="mtk1">)</span></span><br><span><span class="mtk1">plt.show()</span></span><br><span><span></span></span><br></pre><colab-read-only-cell-placeholder style="display: none;"><template shadowrootmode="open"><!----><div><!--?lit$9212114395$-->Start coding or <span tabindex="0" role="button" class="link">generate</span> with AI.</div></template></colab-read-only-cell-placeholder></pre></div><colab-form class="formview vertical layout flex"><div class="widget-area vertical layout"></div></colab-form></div>
    <div class="output" aria-label="Cell 16 output" role="region"><!----> <div class="output-header"> </div>
        <div class="output-content">
          <div class="output-info"><colab-output-info title="Clear output

executed by Ragul Azhagesan
3:41 PM (11 minutes ago)
executed in 0.53s"><template shadowrootmode="open"><!----><md-icon-button title="Code cell output actions" data-aria-label="Code cell output actions" value=""><template shadowrootmode="open" shadowrootdelegatesfocus><!----><button id="button" class="icon-button  standard " aria-label="Code cell output actions">
        <!--?lit$9212114395$--><md-focus-ring part="focus-ring" for="button" aria-hidden="true"><template shadowrootmode="open"><!----></template></md-focus-ring>
        <!--?lit$9212114395$--><md-ripple aria-hidden="true"><template shadowrootmode="open"><!----><div class="surface"></div></template></md-ripple>
        <!--?lit$9212114395$--><span class="icon"><slot></slot></span>
        <!--?lit$9212114395$-->
        <!--?lit$9212114395$--><span class="touch"></span>
        <!--?lit$9212114395$-->
  </button></template>
        <md-icon aria-hidden="true"><template shadowrootmode="open"><!----><slot></slot></template><!--?lit$9212114395$--><svg viewBox="0 0 24 24"><!--?lit$9212114395$--><path d="m15.9 3.07c-4.32 0.0742-8.64-0.0355-13 0.0568-1.37 0.307-1.74 2.1-1.41 3.26 0.469 0.606 1.86 0.384 1.66-0.525 0.0448-0.329-0.183-0.93 0.354-0.766h13.3v1.53h1.71c0.0709-1.13 0.141-2.62-0.968-3.3-0.511-0.264-1.11-0.252-1.67-0.259zm2.94 6.84v4.87c1.62-1.62 3.24-3.24 4.87-4.87h-4.87zm0 0h-1.71v3.43l1.57 1.57c0.32-1.65 0.0556-3.34 0.135-5zm-1.71 3.43v-3.43h-3.43c1.14 1.14 2.29 2.29 3.43 3.43zm1.4 4.27h-1.71v1.48h-13.6v-1.48h-1.71c-0.0473 1.15-0.16 2.72 1.09 3.29 1.47 0.506 3.02 0.0265 4.53 0.192 3.34-0.0051 6.68 0.0336 10-0.0245 1.49-0.366 1.56-2.22 1.42-3.45zm-10.1-1.12c-0.398-0.483-0.796-0.967-1.19-1.45 0.59-0.683 1.18-1.37 1.77-2.05h-8.67v-2h8.67c-0.59-0.683-1.18-1.37-1.77-2.05 0.398-0.483 0.796-0.967 1.19-1.45 1.28 1.5 2.56 3 3.84 4.5-1.28 1.5-2.56 3-3.84 4.5z"></path></svg></md-icon>
      </md-icon-button></template></colab-output-info></div>
          <div class="output-iframe-container">
            <div class="output-iframe-sizer"> <div style=""><div class="outputview" style="height: 469px;"><colab-dom-lifecycle-events style="display: none;"></colab-dom-lifecycle-events><iframe allow="" sandbox="allow-downloads allow-forms allow-pointer-lock allow-popups allow-same-origin allow-scripts allow-storage-access-by-user-activation allow-popups-to-escape-sandbox" src="./rainfall_files/outputframe(3).html" class="" style="height: 469px;"></iframe></div></div></div>
          </div>
        </div></div></div><colab-cell-next-steps><template shadowrootmode="open"><!----></template></colab-cell-next-steps></div></div><div class="add-cell">
      <hr>
    </div></div><div class="cell code code-has-output icon-scrolling" id="cell-k29jSMO2xrkg" tabindex="-1" role="region" aria-label="Cell 17: Code cell: " style=""><div class="cell-tag-editor sticky"></div><div class="cell-toolbar sticky"></div><div class="main-content" elevation="0"><div class="cell-contents"><div class="cell-mask"></div><span class="imported-info-area"></span><div class="codecell-input-output">
      <div class="inputarea horizontal layout code">
        <div class="cell-gutter">
          <!-- Bounding range for vertical scrolling of icons -->
          <div class="cell-execution-container">
            <colab-run-button title="Run cell (Ctrl+Enter)
cell executed since last change

executed by Ragul Azhagesan
3:42 PM (20 minutes ago)
executed in 4.278s" role="button" aria-label="Run cell"><template shadowrootmode="open"><!----> <div class="cell-execution">
      <div class="execution-count"><!--?lit$9212114395$-->[16]</div>
      <div class="cell-execution-indicator"> <!--?lit$9212114395$-->
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
  <!--?lit$9212114395$-->
  <mask id="playSymbolMask">
    <rect width="100%" height="100%" fill="white"></rect>
    <polygon points="10,8 17,12 10,16" fill="black"></polygon>
  </mask>
  <circle cx="12" cy="12" r="7.8" mask="url(#playSymbolMask)" id="filledCircle"></circle>
</svg> </div>
      <!--?lit$9212114395$--><div id="status">
      <md-icon aria-hidden="true"><template shadowrootmode="open"><!----><slot></slot></template><!--?lit$9212114395$--><svg viewBox="0 0 24 24"><!--?lit$9212114395$--><path d="M9 16.17L4.83 12l-1.42 1.41L9 19 21 7l-1.41-1.41z"></path></svg></md-icon>
      <div><!--?lit$9212114395$-->4s</div>
    </div>
    </div></template></colab-run-button>
          </div>
        </div>
      <div class="editor flex lazy-editor" style=""><pre class="lazy-virtualized" style="font-size: 14px; line-height: 19px;"><pre class="lazy-gutter"></pre><pre class="monaco-colorized colab colab colab colab colab colab" data-lang="notebook-python"><span><span class="mtk15">print</span><span class="mtk1">(</span><span class="mtk26">"Histograms&nbsp;showing&nbsp;the&nbsp;data&nbsp;from&nbsp;attributes&nbsp;(Janu</span><span class="mtk26">ary&nbsp;to&nbsp;December)&nbsp;of&nbsp;the&nbsp;years&nbsp;1901-2015:"</span><span class="mtk1">)</span></span><br><span><span class="mtk1">months&nbsp;=&nbsp;[</span><span class="mtk26">'JAN'</span><span class="mtk1">,&nbsp;</span><span class="mtk26">'FEB'</span><span class="mtk1">,&nbsp;</span><span class="mtk26">'MAR'</span><span class="mtk1">,&nbsp;</span><span class="mtk26">'APR'</span><span class="mtk1">,&nbsp;</span><span class="mtk26">'MAY'</span><span class="mtk1">,&nbsp;</span><span class="mtk26">'JUN'</span><span class="mtk1">,&nbsp;</span><span class="mtk26">'JUL'</span><span class="mtk1">,&nbsp;</span><span class="mtk26">'AUG'</span><span class="mtk1">,&nbsp;</span><span class="mtk26">'SEP'</span><span class="mtk1">,&nbsp;</span><span class="mtk26">'OCT'</span><span class="mtk1">,&nbsp;</span><span class="mtk26">'NOV'</span><span class="mtk1">,&nbsp;</span><span class="mtk26">'DEC'</span><span class="mtk1">]</span></span><br><span><span class="mtk19">for</span><span class="mtk1">&nbsp;month&nbsp;</span><span class="mtk6">in</span><span class="mtk1">&nbsp;months:</span></span><br><span><span class="mtk1">&nbsp;&nbsp;&nbsp;&nbsp;data[month].hist(bins=</span><span class="mtk12">20</span><span class="mtk1">)</span></span><br><span><span class="mtk1">&nbsp;&nbsp;&nbsp;&nbsp;plt.title(</span><span class="mtk6">f</span><span class="mtk26">'Histogram&nbsp;of&nbsp;</span><span class="mtk1">{month}</span><span class="mtk26">&nbsp;Rainfall'</span><span class="mtk1">)</span></span><br><span><span class="mtk1">&nbsp;&nbsp;&nbsp;&nbsp;plt.xlabel(</span><span class="mtk6">f</span><span class="mtk26">'</span><span class="mtk1">{month}</span><span class="mtk26">&nbsp;Rainfall'</span><span class="mtk1">)</span></span><br><span><span class="mtk1">&nbsp;&nbsp;&nbsp;&nbsp;plt.ylabel(</span><span class="mtk26">'Frequency'</span><span class="mtk1">)</span></span><br><span><span class="mtk1">&nbsp;&nbsp;&nbsp;&nbsp;plt.show()</span></span><br></pre><colab-read-only-cell-placeholder style="display: none;"><template shadowrootmode="open"><!----><div><!--?lit$9212114395$-->Start coding or <span tabindex="0" role="button" class="link">generate</span> with AI.</div></template></colab-read-only-cell-placeholder></pre></div><colab-form class="formview vertical layout flex"><div class="widget-area vertical layout"></div></colab-form></div>
    <div class="output" aria-label="Cell 17 output" role="region"><!----> <div class="output-header"> </div>
        <div class="output-content">
          <div class="output-info"><colab-output-info title="Clear output

executed by Ragul Azhagesan
3:42 PM (10 minutes ago)
executed in 4.278s"><template shadowrootmode="open"><!----><md-icon-button title="Code cell output actions" data-aria-label="Code cell output actions" value=""><template shadowrootmode="open" shadowrootdelegatesfocus><!----><button id="button" class="icon-button  standard " aria-label="Code cell output actions">
        <!--?lit$9212114395$--><md-focus-ring part="focus-ring" for="button" aria-hidden="true"><template shadowrootmode="open"><!----></template></md-focus-ring>
        <!--?lit$9212114395$--><md-ripple aria-hidden="true"><template shadowrootmode="open"><!----><div class="surface   "></div></template></md-ripple>
        <!--?lit$9212114395$--><span class="icon"><slot></slot></span>
        <!--?lit$9212114395$-->
        <!--?lit$9212114395$--><span class="touch"></span>
        <!--?lit$9212114395$-->
  </button></template>
        <md-icon aria-hidden="true"><template shadowrootmode="open"><!----><slot></slot></template><!--?lit$9212114395$--><svg viewBox="0 0 24 24"><!--?lit$9212114395$--><path d="m15.9 3.07c-4.32 0.0742-8.64-0.0355-13 0.0568-1.37 0.307-1.74 2.1-1.41 3.26 0.469 0.606 1.86 0.384 1.66-0.525 0.0448-0.329-0.183-0.93 0.354-0.766h13.3v1.53h1.71c0.0709-1.13 0.141-2.62-0.968-3.3-0.511-0.264-1.11-0.252-1.67-0.259zm2.94 6.84v4.87c1.62-1.62 3.24-3.24 4.87-4.87h-4.87zm0 0h-1.71v3.43l1.57 1.57c0.32-1.65 0.0556-3.34 0.135-5zm-1.71 3.43v-3.43h-3.43c1.14 1.14 2.29 2.29 3.43 3.43zm1.4 4.27h-1.71v1.48h-13.6v-1.48h-1.71c-0.0473 1.15-0.16 2.72 1.09 3.29 1.47 0.506 3.02 0.0265 4.53 0.192 3.34-0.0051 6.68 0.0336 10-0.0245 1.49-0.366 1.56-2.22 1.42-3.45zm-10.1-1.12c-0.398-0.483-0.796-0.967-1.19-1.45 0.59-0.683 1.18-1.37 1.77-2.05h-8.67v-2h8.67c-0.59-0.683-1.18-1.37-1.77-2.05 0.398-0.483 0.796-0.967 1.19-1.45 1.28 1.5 2.56 3 3.84 4.5-1.28 1.5-2.56 3-3.84 4.5z"></path></svg></md-icon>
      </md-icon-button></template></colab-output-info></div>
          <div class="output-iframe-container">
            <div class="output-iframe-sizer"> <div style=""><div class="outputview" style="height: 1000px;"><colab-dom-lifecycle-events style="display: none;"></colab-dom-lifecycle-events><iframe allow="" sandbox="allow-downloads allow-forms allow-pointer-lock allow-popups allow-same-origin allow-scripts allow-storage-access-by-user-activation allow-popups-to-escape-sandbox" src="./rainfall_files/outputframe(4).html" class="" style="height: 1000px;"></iframe></div></div></div>
          </div>
        </div></div></div><colab-cell-next-steps><template shadowrootmode="open"><!----></template></colab-cell-next-steps></div></div><div class="add-cell">
      <hr>
    </div></div><div class="cell code code-has-output icon-scrolling" id="cell-SdMRJMvSxxgK" tabindex="-1" role="region" aria-label="Cell 18: Code cell: " style=""><div class="cell-tag-editor sticky"></div><div class="cell-toolbar sticky"></div><div class="main-content" elevation="0"><div class="cell-contents"><div class="cell-mask"></div><span class="imported-info-area"></span><div class="codecell-input-output">
      <div class="inputarea horizontal layout code">
        <div class="cell-gutter">
          <!-- Bounding range for vertical scrolling of icons -->
          <div class="cell-execution-container">
            <colab-run-button title="Run cell (Ctrl+Enter)
cell executed since last change

executed by Ragul Azhagesan
3:42 PM (19 minutes ago)
executed in 0.691s" role="button" aria-label="Run cell"><template shadowrootmode="open"><!----> <div class="cell-execution hovered">
      <div class="execution-count"><!--?lit$9212114395$-->[17]</div>
      <div class="cell-execution-indicator"> <!--?lit$9212114395$-->
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
  <!--?lit$9212114395$-->
  <mask id="playSymbolMask">
    <rect width="100%" height="100%" fill="white"></rect>
    <polygon points="10,8 17,12 10,16" fill="black"></polygon>
  </mask>
  <circle cx="12" cy="12" r="7.8" mask="url(#playSymbolMask)" id="filledCircle"></circle>
</svg> </div>
      <!--?lit$9212114395$--><div id="status">
      <md-icon aria-hidden="true"><template shadowrootmode="open"><!----><slot></slot></template><!--?lit$9212114395$--><svg viewBox="0 0 24 24"><!--?lit$9212114395$--><path d="M9 16.17L4.83 12l-1.42 1.41L9 19 21 7l-1.41-1.41z"></path></svg></md-icon>
      <div><!--?lit$9212114395$-->0s</div>
    </div>
    </div></template></colab-run-button>
          </div>
        </div>
      <div class="editor flex lazy-editor" style=""><pre class="lazy-virtualized" style="font-size: 14px; line-height: 19px;"><pre class="lazy-gutter"></pre><pre class="monaco-colorized colab colab colab colab colab" data-lang="notebook-python"><span><span class="mtk15">print</span><span class="mtk1">(</span><span class="mtk26">"Histogram&nbsp;showing&nbsp;the&nbsp;annual&nbsp;rainfall&nbsp;of&nbsp;all&nbsp;stat</span><span class="mtk26">es:"</span><span class="mtk1">)</span></span><br><span><span class="mtk1">data[</span><span class="mtk26">'ANNUAL'</span><span class="mtk1">].hist(bins=</span><span class="mtk12">20</span><span class="mtk1">)</span></span><br><span><span class="mtk1">plt.title(</span><span class="mtk26">'Histogram&nbsp;of&nbsp;Annual&nbsp;Rainfall'</span><span class="mtk1">)</span></span><br><span><span class="mtk1">plt.xlabel(</span><span class="mtk26">'Annual&nbsp;Rainfall'</span><span class="mtk1">)</span></span><br><span><span class="mtk1">plt.ylabel(</span><span class="mtk26">'Frequency'</span><span class="mtk1">)</span></span><br><span><span class="mtk1">plt.show()</span></span><br><span><span></span></span><br></pre><colab-read-only-cell-placeholder style="display: none;"><template shadowrootmode="open"><!----><div><!--?lit$9212114395$-->Start coding or <span tabindex="0" role="button" class="link">generate</span> with AI.</div></template></colab-read-only-cell-placeholder></pre></div><colab-form class="formview vertical layout flex"><div class="widget-area vertical layout"></div></colab-form></div>
    <div class="output" aria-label="Cell 18 output" role="region"><!----> <div class="output-header"> </div>
        <div class="output-content">
          <div class="output-info"><colab-output-info title="Clear output

executed by Ragul Azhagesan
3:42 PM (9 minutes ago)
executed in 0.691s"><template shadowrootmode="open"><!----><md-icon-button title="Code cell output actions" data-aria-label="Code cell output actions" value=""><template shadowrootmode="open" shadowrootdelegatesfocus><!----><button id="button" class="icon-button  standard " aria-label="Code cell output actions">
        <!--?lit$9212114395$--><md-focus-ring part="focus-ring" for="button" aria-hidden="true"><template shadowrootmode="open"><!----></template></md-focus-ring>
        <!--?lit$9212114395$--><md-ripple aria-hidden="true"><template shadowrootmode="open"><!----><div class="surface   "></div></template></md-ripple>
        <!--?lit$9212114395$--><span class="icon"><slot></slot></span>
        <!--?lit$9212114395$-->
        <!--?lit$9212114395$--><span class="touch"></span>
        <!--?lit$9212114395$-->
  </button></template>
        <md-icon aria-hidden="true"><template shadowrootmode="open"><!----><slot></slot></template><!--?lit$9212114395$--><svg viewBox="0 0 24 24"><!--?lit$9212114395$--><path d="m15.9 3.07c-4.32 0.0742-8.64-0.0355-13 0.0568-1.37 0.307-1.74 2.1-1.41 3.26 0.469 0.606 1.86 0.384 1.66-0.525 0.0448-0.329-0.183-0.93 0.354-0.766h13.3v1.53h1.71c0.0709-1.13 0.141-2.62-0.968-3.3-0.511-0.264-1.11-0.252-1.67-0.259zm2.94 6.84v4.87c1.62-1.62 3.24-3.24 4.87-4.87h-4.87zm0 0h-1.71v3.43l1.57 1.57c0.32-1.65 0.0556-3.34 0.135-5zm-1.71 3.43v-3.43h-3.43c1.14 1.14 2.29 2.29 3.43 3.43zm1.4 4.27h-1.71v1.48h-13.6v-1.48h-1.71c-0.0473 1.15-0.16 2.72 1.09 3.29 1.47 0.506 3.02 0.0265 4.53 0.192 3.34-0.0051 6.68 0.0336 10-0.0245 1.49-0.366 1.56-2.22 1.42-3.45zm-10.1-1.12c-0.398-0.483-0.796-0.967-1.19-1.45 0.59-0.683 1.18-1.37 1.77-2.05h-8.67v-2h8.67c-0.59-0.683-1.18-1.37-1.77-2.05 0.398-0.483 0.796-0.967 1.19-1.45 1.28 1.5 2.56 3 3.84 4.5-1.28 1.5-2.56 3-3.84 4.5z"></path></svg></md-icon>
      </md-icon-button></template></colab-output-info></div>
          <div class="output-iframe-container">
            <div class="output-iframe-sizer"> <div style=""><div class="outputview" style="height: 489px;"><colab-dom-lifecycle-events style="display: none;"></colab-dom-lifecycle-events><iframe allow="" sandbox="allow-downloads allow-forms allow-pointer-lock allow-popups allow-same-origin allow-scripts allow-storage-access-by-user-activation allow-popups-to-escape-sandbox" src="./rainfall_files/outputframe(5).html" class="" style="height: 489px;"></iframe></div></div></div>
          </div>
        </div></div></div><colab-cell-next-steps><template shadowrootmode="open"><!----></template></colab-cell-next-steps></div></div><div class="add-cell">
      <hr>
    </div></div><div class="cell text" id="cell-AjQMma9JyLSK" tabindex="-1" role="region" aria-label="Cell 19: Text cell: " style=""><div class="cell-tag-editor sticky"></div><div class="cell-toolbar sticky"></div><div class="main-content" elevation="0"><div class="cell-contents"><div class="cell-mask"></div><span class="imported-info-area"></span><!----> <div class="toolbar-root"></div>
      <div class="editor-container horizontal">
        <div class="editor-root"></div>
        <div class="text-top-div">
          <div class="markdown"><span><p>Double-click (or enter) to edit</p>
</span></div>
        </div>
      </div>

      <div class="section-header" style="display: none;">
        <colab-run-button role="button" aria-label="Run cell"><template shadowrootmode="open"><!----> <div class=" cell-execution ">
      <div class="execution-count"><!--?lit$9212114395$-->[ ]</div>
      <div class="cell-execution-indicator"> <!--?lit$9212114395$-->
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
  <!--?lit$9212114395$-->
  <mask id="playSymbolMask">
    <rect width="100%" height="100%" fill="white"></rect>
    <polygon points="10,8 17,12 10,16" fill="black"></polygon>
  </mask>
  <circle cx="12" cy="12" r="7.8" mask="url(#playSymbolMask)" id="filledCircle"></circle>
</svg> </div>
      <!--?lit$9212114395$--><!--?-->
    </div></template></colab-run-button>
        <div class="section-header-container" title="click to expand">↳ 0 cells hidden</div>
      </div></div></div><div class="add-cell">
      <hr>
    </div></div><div class="cell code icon-scrolling" id="cell-L49MpTeGyME3" tabindex="-1" role="region" aria-label="Cell 20: Code cell: " style=""><div class="cell-tag-editor sticky"></div><div class="cell-toolbar sticky"></div><div class="main-content" elevation="0"><div class="cell-contents"><div class="cell-mask"></div><span class="imported-info-area"></span><div class="codecell-input-output">
      <div class="inputarea horizontal layout code">
        <div class="cell-gutter">
          <!-- Bounding range for vertical scrolling of icons -->
          <div class="cell-execution-container">
            <colab-run-button title="Run cell (Ctrl+Enter)
cell has not been executed in this session" role="button" aria-label="Run cell"><template shadowrootmode="open"><!----> <div class=" cell-execution stale ">
      <div class="execution-count"><!--?lit$9212114395$-->[ ]</div>
      <div class="cell-execution-indicator"> <!--?lit$9212114395$-->
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
  <!--?lit$9212114395$-->
  <mask id="playSymbolMask">
    <rect width="100%" height="100%" fill="white"></rect>
    <polygon points="10,8 17,12 10,16" fill="black"></polygon>
  </mask>
  <circle cx="12" cy="12" r="7.8" mask="url(#playSymbolMask)" id="filledCircle"></circle>
</svg> </div>
      <!--?lit$9212114395$--><!--?-->
    </div></template></colab-run-button>
          </div>
        </div>
      <div class="editor flex lazy-editor" style=""><pre class="lazy-virtualized" style="font-size: 14px; line-height: 19px;"><pre class="lazy-gutter"></pre><pre class="monaco-colorized colab colab colab colab" data-lang="notebook-python"><span><span></span></span><br></pre><colab-read-only-cell-placeholder style="display: block;"><template shadowrootmode="open"><!----><div><!--?lit$9212114395$-->Start coding or <span tabindex="0" role="button" class="link">generate</span> with AI.</div></template></colab-read-only-cell-placeholder></pre></div><colab-form class="formview vertical layout flex"><div class="widget-area vertical layout"></div></colab-form></div>
    <div class="output" aria-label="Cell 20 output" role="region"><!----> <div class="output-header"> </div>
        <div class="output-content" hidden="">
          <div class="output-info"> </div>
          <div class="output-iframe-container" hidden="">
            <div class="output-iframe-sizer"> </div>
          </div>
        </div></div></div><colab-cell-next-steps><template shadowrootmode="open"><!----></template></colab-cell-next-steps></div></div><div class="add-cell">
      <hr>
    </div></div><div class="cell code code-has-output icon-scrolling" id="cell-LEqob-xux7jt" tabindex="-1" role="region" aria-label="Cell 21: Code cell: " style=""><div class="cell-tag-editor sticky"></div><div class="cell-toolbar sticky"></div><div class="main-content" elevation="0"><div class="cell-contents"><div class="cell-mask"></div><span class="imported-info-area"></span><div class="codecell-input-output">
      <div class="inputarea horizontal layout code">
        <div class="cell-gutter">
          <!-- Bounding range for vertical scrolling of icons -->
          <div class="cell-execution-container">
            <colab-run-button title="Run cell (Ctrl+Enter)
cell executed since last change

executed by Ragul Azhagesan
3:43 PM (19 minutes ago)
executed in 0.653s" role="button" aria-label="Run cell"><template shadowrootmode="open"><!----> <div class="cell-execution">
      <div class="execution-count"><!--?lit$9212114395$-->[18]</div>
      <div class="cell-execution-indicator"> <!--?lit$9212114395$-->
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
  <!--?lit$9212114395$-->
  <mask id="playSymbolMask">
    <rect width="100%" height="100%" fill="white"></rect>
    <polygon points="10,8 17,12 10,16" fill="black"></polygon>
  </mask>
  <circle cx="12" cy="12" r="7.8" mask="url(#playSymbolMask)" id="filledCircle"></circle>
</svg> </div>
      <!--?lit$9212114395$--><div id="status">
      <md-icon aria-hidden="true"><template shadowrootmode="open"><!----><slot></slot></template><!--?lit$9212114395$--><svg viewBox="0 0 24 24"><!--?lit$9212114395$--><path d="M9 16.17L4.83 12l-1.42 1.41L9 19 21 7l-1.41-1.41z"></path></svg></md-icon>
      <div><!--?lit$9212114395$-->0s</div>
    </div>
    </div></template></colab-run-button>
          </div>
        </div>
      <div class="editor flex lazy-editor" style=""><pre class="lazy-virtualized" style="font-size: 14px; line-height: 19px;"><pre class="lazy-gutter"></pre><pre class="monaco-colorized colab colab colab colab" data-lang="notebook-python"><span><span class="mtk15">print</span><span class="mtk1">(</span><span class="mtk26">"Violin&nbsp;plot&nbsp;of&nbsp;the&nbsp;ANNUAL&nbsp;attribute:"</span><span class="mtk1">)</span></span><br><span><span class="mtk1">sb.violinplot(data=data[</span><span class="mtk26">'ANNUAL'</span><span class="mtk1">])</span></span><br><span><span class="mtk1">plt.title(</span><span class="mtk26">'Violin&nbsp;Plot&nbsp;of&nbsp;Annual&nbsp;Rainfall'</span><span class="mtk1">)</span></span><br><span><span class="mtk1">plt.show()</span></span><br></pre><colab-read-only-cell-placeholder style="display: none;"><template shadowrootmode="open"><!----><div><!--?lit$9212114395$-->Start coding or <span tabindex="0" role="button" class="link">generate</span> with AI.</div></template></colab-read-only-cell-placeholder></pre></div><colab-form class="formview vertical layout flex"><div class="widget-area vertical layout"></div></colab-form></div>
    <div class="output" aria-label="Cell 21 output" role="region"><!----> <div class="output-header"> </div>
        <div class="output-content">
          <div class="output-info"><colab-output-info title="Clear output

executed by Ragul Azhagesan
3:43 PM (9 minutes ago)
executed in 0.653s"><template shadowrootmode="open"><!----><md-icon-button title="Code cell output actions" data-aria-label="Code cell output actions" value=""><template shadowrootmode="open" shadowrootdelegatesfocus><!----><button id="button" class="icon-button  standard " aria-label="Code cell output actions">
        <!--?lit$9212114395$--><md-focus-ring part="focus-ring" for="button" aria-hidden="true"><template shadowrootmode="open"><!----></template></md-focus-ring>
        <!--?lit$9212114395$--><md-ripple aria-hidden="true"><template shadowrootmode="open"><!----><div class="surface   "></div></template></md-ripple>
        <!--?lit$9212114395$--><span class="icon"><slot></slot></span>
        <!--?lit$9212114395$-->
        <!--?lit$9212114395$--><span class="touch"></span>
        <!--?lit$9212114395$-->
  </button></template>
        <md-icon aria-hidden="true"><template shadowrootmode="open"><!----><slot></slot></template><!--?lit$9212114395$--><svg viewBox="0 0 24 24"><!--?lit$9212114395$--><path d="m15.9 3.07c-4.32 0.0742-8.64-0.0355-13 0.0568-1.37 0.307-1.74 2.1-1.41 3.26 0.469 0.606 1.86 0.384 1.66-0.525 0.0448-0.329-0.183-0.93 0.354-0.766h13.3v1.53h1.71c0.0709-1.13 0.141-2.62-0.968-3.3-0.511-0.264-1.11-0.252-1.67-0.259zm2.94 6.84v4.87c1.62-1.62 3.24-3.24 4.87-4.87h-4.87zm0 0h-1.71v3.43l1.57 1.57c0.32-1.65 0.0556-3.34 0.135-5zm-1.71 3.43v-3.43h-3.43c1.14 1.14 2.29 2.29 3.43 3.43zm1.4 4.27h-1.71v1.48h-13.6v-1.48h-1.71c-0.0473 1.15-0.16 2.72 1.09 3.29 1.47 0.506 3.02 0.0265 4.53 0.192 3.34-0.0051 6.68 0.0336 10-0.0245 1.49-0.366 1.56-2.22 1.42-3.45zm-10.1-1.12c-0.398-0.483-0.796-0.967-1.19-1.45 0.59-0.683 1.18-1.37 1.77-2.05h-8.67v-2h8.67c-0.59-0.683-1.18-1.37-1.77-2.05 0.398-0.483 0.796-0.967 1.19-1.45 1.28 1.5 2.56 3 3.84 4.5-1.28 1.5-2.56 3-3.84 4.5z"></path></svg></md-icon>
      </md-icon-button></template></colab-output-info></div>
          <div class="output-iframe-container">
            <div class="output-iframe-sizer"> <div style=""><div class="outputview" style="height: 450px;"><colab-dom-lifecycle-events style="display: none;"></colab-dom-lifecycle-events><iframe allow="" sandbox="allow-downloads allow-forms allow-pointer-lock allow-popups allow-same-origin allow-scripts allow-storage-access-by-user-activation allow-popups-to-escape-sandbox" src="./rainfall_files/outputframe(6).html" class="" style="height: 450px;"></iframe></div></div></div>
          </div>
        </div></div></div><colab-cell-next-steps><template shadowrootmode="open"><!----></template></colab-cell-next-steps></div></div><div class="add-cell">
      <hr>
    </div></div></div>
              </div>
            </div>
          <section class="sidebar" aria-label="Comments" style="display: none;"></section></div>
          <!--?lit$9212114395$--> <div class="footer-links">
      <a target="_blank" href="https://colab.research.google.com/signup?utm_source=footer&amp;utm_medium=link&amp;utm_campaign=footer_links">
        <!--?lit$9212114395$-->Colab paid products
      </a>
      -
      <a href="https://colab.research.google.com/cancel-subscription" target="_blank">
        <!--?lit$9212114395$-->Cancel contracts here
      </a>
    </div>
        </div>
      </colab-shaded-scroller>
      <div class="notebook-scroll-shadow" style=""></div>
    </div></colab-tab></div>
  </div></colab-tab-pane>
      <colab-resizer style="height: 33.3%" class="sn-resize no-tabs"><div class="resizer-thumb"></div>
        <!--?lit$9212114395$--><colab-tab-pane class="layout vertical grow no-tabs" align="horizontal"><!----> <div class="layout vertical grow">
    <div class="tab-pane-header layout horizontal noshrink">
      <md-tabs><template shadowrootmode="open"><!---->
      <div class="tabs">
        <slot></slot>
      </div>
      <md-divider part="divider"><template shadowrootmode="open"><!----></template></md-divider>
    </template></md-tabs>
      <div class="layout grow"></div>
      <!--?lit$9212114395$--> <md-icon-button title="Show more" data-aria-label="Show more" value=""><template shadowrootmode="open" shadowrootdelegatesfocus><!----><button id="button" class="icon-button  standard " aria-label="Show more">
        <!--?lit$9212114395$--><md-focus-ring part="focus-ring" for="button" aria-hidden="true"><template shadowrootmode="open"><!----></template></md-focus-ring>
        <!--?lit$9212114395$--><md-ripple aria-hidden="true"><template shadowrootmode="open"><!----><div class="surface   "></div></template></md-ripple>
        <!--?lit$9212114395$--><span class="icon"><slot></slot></span>
        <!--?lit$9212114395$-->
        <!--?lit$9212114395$--><span class="touch"></span>
        <!--?lit$9212114395$-->
  </button></template>
    <md-icon aria-hidden="true"><template shadowrootmode="open"><!----><slot></slot></template>more_horiz</md-icon>
  </md-icon-button>
    </div>
    <div class="layout vertical grow tab-pane-container"> </div>
  </div></colab-tab-pane>
      </colab-resizer>
    </div>
      <colab-resizer style="width: 37%" class="we-resize no-tabs"><div class="resizer-thumb"></div>
        <!--?lit$9212114395$--> <div class="layout vertical tab-pane-parent">
      <!--?lit$9212114395$--><colab-tab-pane class="layout vertical grow no-tabs" align="horizontal"><!----> <div class="layout vertical grow">
    <div class="tab-pane-header layout horizontal noshrink">
      <md-tabs><template shadowrootmode="open"><!---->
      <div class="tabs">
        <slot></slot>
      </div>
      <md-divider part="divider"><template shadowrootmode="open"><!----></template></md-divider>
    </template></md-tabs>
      <div class="layout grow"></div>
      <!--?lit$9212114395$--> <md-icon-button title="Show more" data-aria-label="Show more" value=""><template shadowrootmode="open" shadowrootdelegatesfocus><!----><button id="button" class="icon-button  standard " aria-label="Show more">
        <!--?lit$9212114395$--><md-focus-ring part="focus-ring" for="button" aria-hidden="true"><template shadowrootmode="open"><!----></template></md-focus-ring>
        <!--?lit$9212114395$--><md-ripple aria-hidden="true"><template shadowrootmode="open"><!----><div class="surface   "></div></template></md-ripple>
        <!--?lit$9212114395$--><span class="icon"><slot></slot></span>
        <!--?lit$9212114395$-->
        <!--?lit$9212114395$--><span class="touch"></span>
        <!--?lit$9212114395$-->
  </button></template>
    <md-icon aria-hidden="true"><template shadowrootmode="open"><!----><slot></slot></template>more_horiz</md-icon>
  </md-icon-button>
    </div>
    <div class="layout vertical grow tab-pane-container"> </div>
  </div></colab-tab-pane>
      <colab-resizer style="height: 33.3%" class="sn-resize no-tabs"><div class="resizer-thumb"></div>
        <!--?lit$9212114395$--><colab-tab-pane class="layout vertical grow no-tabs" align="horizontal"><!----> <div class="layout vertical grow">
    <div class="tab-pane-header layout horizontal noshrink">
      <md-tabs><template shadowrootmode="open"><!---->
      <div class="tabs">
        <slot></slot>
      </div>
      <md-divider part="divider"><template shadowrootmode="open"><!----></template></md-divider>
    </template></md-tabs>
      <div class="layout grow"></div>
      <!--?lit$9212114395$--> <md-icon-button title="Show more" data-aria-label="Show more" value=""><template shadowrootmode="open" shadowrootdelegatesfocus><!----><button id="button" class="icon-button  standard " aria-label="Show more">
        <!--?lit$9212114395$--><md-focus-ring part="focus-ring" for="button" aria-hidden="true"><template shadowrootmode="open"><!----></template></md-focus-ring>
        <!--?lit$9212114395$--><md-ripple aria-hidden="true"><template shadowrootmode="open"><!----><div class="surface   "></div></template></md-ripple>
        <!--?lit$9212114395$--><span class="icon"><slot></slot></span>
        <!--?lit$9212114395$-->
        <!--?lit$9212114395$--><span class="touch"></span>
        <!--?lit$9212114395$-->
  </button></template>
    <md-icon aria-hidden="true"><template shadowrootmode="open"><!----><slot></slot></template>more_horiz</md-icon>
  </md-icon-button>
    </div>
    <div class="layout vertical grow tab-pane-container"> </div>
  </div></colab-tab-pane>
      </colab-resizer>
    </div>
      </colab-resizer>
    </div></colab-tab-layout-container>
        </div>
        <div class="proxies"><div><colab-dom-lifecycle-events style="display: none;"></colab-dom-lifecycle-events><iframe allow="" sandbox="allow-downloads allow-forms allow-pointer-lock allow-popups allow-same-origin allow-scripts allow-storage-access-by-user-activation allow-popups-to-escape-sandbox" src="./rainfall_files/outputframe(7).html" style="width: 1px; height: 1px; position: absolute; top: -100px;"></iframe></div><div><colab-dom-lifecycle-events style="display: none;"></colab-dom-lifecycle-events><iframe allow="accelerometer; autoplay; gyroscope; magnetometer; xr-spatial-tracking; clipboard-write; camera; microphone; serial; usb" sandbox="allow-downloads allow-forms allow-pointer-lock allow-popups allow-same-origin allow-scripts allow-storage-access-by-user-activation allow-modals allow-popups-to-escape-sandbox" src="./rainfall_files/outputframe(8).html" style="width: 1px; height: 1px; position: absolute; top: -100px;"></iframe></div></div>
      <colab-file-viewer-manager></colab-file-viewer-manager></div>
    <colab-status-bar role="region" aria-label="Runtime status bar" style="min-height: inherit;"><template shadowrootmode="open"><!----> <!--?lit$9212114395$--> <div class="connect-status">
        <md-icon status="icon-okay" aria-hidden="true"><template shadowrootmode="open"><!----><slot></slot></template><!--?lit$9212114395$--><svg viewBox="0 0 24 24"><!--?lit$9212114395$--><path d="M9 16.17L4.83 12l-1.42 1.41L9 19 21 7l-1.41-1.41z"></path></svg></md-icon>
        <div aria-atomic="true" aria-live="polite"><!--?lit$9212114395$-->Connected to Python 3 Google Compute Engine backend</div>
      </div>
      <md-icon-button class="visible-on-closed" title="Connected" disabled="" value="" data-aria-label="Connected"><template shadowrootmode="open" shadowrootdelegatesfocus><!----><button id="button" class="icon-button  standard " aria-label="Connected" disabled="">
        <!--?lit$9212114395$--><md-focus-ring part="focus-ring" for="button" aria-hidden="true"><template shadowrootmode="open"><!----></template></md-focus-ring>
        <!--?lit$9212114395$--><md-ripple disabled="" aria-hidden="true"><template shadowrootmode="open"><!----><div class="surface   "></div></template></md-ripple>
        <!--?lit$9212114395$--><span class="icon"><slot></slot></span>
        <!--?lit$9212114395$-->
        <!--?lit$9212114395$--><span class="touch"></span>
        <!--?lit$9212114395$-->
  </button></template>
        <md-icon filled="" class="visible-on-closed" status="icon-okay" aria-hidden="true"><template shadowrootmode="open"><!----><slot></slot></template><!--?lit$9212114395$-->fiber_manual_record</md-icon>
      </md-icon-button>
      <md-icon-button title="Close" data-aria-label="Close" value=""><template shadowrootmode="open" shadowrootdelegatesfocus><!----><button id="button" class="icon-button  standard " aria-label="Close">
        <!--?lit$9212114395$--><md-focus-ring part="focus-ring" for="button" aria-hidden="true"><template shadowrootmode="open"><!----></template></md-focus-ring>
        <!--?lit$9212114395$--><md-ripple aria-hidden="true"><template shadowrootmode="open"><!----><div class="surface   "></div></template></md-ripple>
        <!--?lit$9212114395$--><span class="icon"><slot></slot></span>
        <!--?lit$9212114395$-->
        <!--?lit$9212114395$--><span class="touch"></span>
        <!--?lit$9212114395$-->
  </button></template>
        <md-icon aria-hidden="true"><template shadowrootmode="open"><!----><slot></slot></template>close</md-icon>
      </md-icon-button></template></colab-status-bar></div><div class="goog-menu" id="file-menu" role="menu" aria-haspopup="true" style="display: none; user-select: none;"><!--?lit$9212114395$--><div command="locate-in-drive" class="goog-menuitem " role="menuitem" id=":2" style="user-select: none;"><div class="goog-menuitem-content" style="user-select: none;"><!--?lit$9212114395$-->Locate in Drive<!--?lit$9212114395$--></div></div><div class="goog-menuseparator goog-menuitem-disabled" aria-disabled="true" role="separator" id=":3" style="user-select: none;"></div><div command="new" class="goog-menuitem " role="menuitem" id=":4" style="user-select: none;"><div class="goog-menuitem-content" style="user-select: none;"><!--?lit$9212114395$-->New notebook in Drive<!--?lit$9212114395$--></div></div><div command="open" class="goog-menuitem " role="menuitem" id=":5" style="user-select: none;"><div class="goog-menuitem-content" style="user-select: none;"><!--?lit$9212114395$-->Open notebook<!--?lit$9212114395$--></div></div><div command="import-notebook" class="goog-menuitem " role="menuitem" id=":6" style="user-select: none;"><div class="goog-menuitem-content" style="user-select: none;"><!--?lit$9212114395$-->Upload notebook<!--?lit$9212114395$--></div></div><div class="goog-menuseparator goog-menuitem-disabled" aria-disabled="true" role="separator" id=":7" style="user-select: none;"></div><div command="rename" class="goog-menuitem " role="menuitem" id=":8" style="user-select: none;"><div class="goog-menuitem-content" style="user-select: none;"><!--?lit$9212114395$-->Rename<!--?lit$9212114395$--></div></div><div command="move-notebook" class="goog-menuitem " role="menuitem" id=":9" style="user-select: none;"><div class="goog-menuitem-content" style="user-select: none;"><!--?lit$9212114395$-->Move<!--?lit$9212114395$--></div></div><div command="trash" class="goog-menuitem " role="menuitem" id=":a" style="user-select: none;"><div class="goog-menuitem-content" style="user-select: none;"><!--?lit$9212114395$-->Move to trash<!--?lit$9212114395$--></div></div><div class="goog-menuseparator goog-menuitem-disabled" aria-disabled="true" role="separator" id=":b" style="user-select: none;"></div><div command="clone" class="goog-menuitem " role="menuitem" id=":c" style="user-select: none;"><div class="goog-menuitem-content" style="user-select: none;"><!--?lit$9212114395$-->Save a copy in Drive<!--?lit$9212114395$--></div></div><div command="copy-to-gist" class="goog-menuitem " role="menuitem" id=":d" style="user-select: none;"><div class="goog-menuitem-content" style="user-select: none;"><!--?lit$9212114395$-->Save a copy as a GitHub Gist<!--?lit$9212114395$--></div></div><div command="copy-to-github" class="goog-menuitem " role="menuitem" id=":e" style="user-select: none;"><div class="goog-menuitem-content" style="user-select: none;"><!--?lit$9212114395$-->Save a copy in GitHub<!--?lit$9212114395$--></div></div><div class="goog-menuseparator goog-menuitem-disabled" aria-disabled="true" role="separator" id=":f" style="user-select: none;"></div><div command="save" class="goog-menuitem " role="menuitem" id=":g" style="user-select: none;"><div class="goog-menuitem-content" style="user-select: none;"><!--?lit$9212114395$-->Save<!--?lit$9212114395$--></div></div><div command="save-and-checkpoint" class="goog-menuitem " role="menuitem" id=":h" style="user-select: none;"><div class="goog-menuitem-content" style="user-select: none;"><!--?lit$9212114395$-->Save and pin revision<!--?lit$9212114395$--></div></div><div command="show-history" class="goog-menuitem " role="menuitem" id=":i" style="user-select: none;"><div class="goog-menuitem-content" style="user-select: none;"><!--?lit$9212114395$-->Revision history<!--?lit$9212114395$--></div></div><div class="goog-menuseparator goog-menuitem-disabled" aria-disabled="true" role="separator" id=":j" style="user-select: none;"></div><div class="goog-submenu goog-menuitem" id="download-submenu-menu-button" role="menuitem" aria-haspopup="true" style="user-select: none;"><div class="goog-menuitem-content" style="user-select: none;">
      <!--?lit$9212114395$-->Download
    <span class="goog-submenu-arrow" style="user-select: none;">►</span></div></div><div command="print" class="goog-menuitem " role="menuitem" id=":n" style="user-select: none;"><div class="goog-menuitem-content" style="user-select: none;"><!--?lit$9212114395$-->Print<!--?lit$9212114395$--></div></div></div><div class="goog-menu" id="download-submenu-menu" role="menu" aria-haspopup="true" style="display: none; user-select: none;"><!--?lit$9212114395$--><div command="download-ipynb" class="goog-menuitem " role="menuitem" id=":l" style="user-select: none;"><div class="goog-menuitem-content" style="user-select: none;"><!--?lit$9212114395$-->Download .ipynb<!--?lit$9212114395$--></div></div><div command="download-python" class="goog-menuitem " role="menuitem" id=":m" style="user-select: none;"><div class="goog-menuitem-content" style="user-select: none;"><!--?lit$9212114395$-->Download .py<!--?lit$9212114395$--></div></div></div><div class="goog-menu" id="edit-menu" role="menu" aria-haspopup="true" style="display: none; user-select: none;"><!--?lit$9212114395$--><div command="undo" class="goog-menuitem " role="menuitem" id=":p" style="user-select: none;"><div class="goog-menuitem-content" style="user-select: none;"><!--?lit$9212114395$-->Undo<!--?lit$9212114395$--></div></div><div command="redo" class="goog-menuitem " role="menuitem" id=":q" style="user-select: none;"><div class="goog-menuitem-content" style="user-select: none;"><!--?lit$9212114395$-->Redo<!--?lit$9212114395$--></div></div><div class="goog-menuseparator goog-menuitem-disabled" aria-disabled="true" role="separator" id=":r" style="user-select: none;"></div><div command="select-all" class="goog-menuitem " role="menuitem" id=":s" style="user-select: none;"><div class="goog-menuitem-content" style="user-select: none;"><!--?lit$9212114395$-->Select all cells<!--?lit$9212114395$--></div></div><div command="cut" class="goog-menuitem " role="menuitem" id=":t" style="user-select: none;"><div class="goog-menuitem-content" style="user-select: none;"><!--?lit$9212114395$-->Cut cell or selection<!--?lit$9212114395$--></div></div><div command="copy" class="goog-menuitem " role="menuitem" id=":u" style="user-select: none;"><div class="goog-menuitem-content" style="user-select: none;"><!--?lit$9212114395$-->Copy cell or selection<!--?lit$9212114395$--></div></div><div command="paste" class="goog-menuitem " role="menuitem" id=":v" style="user-select: none;"><div class="goog-menuitem-content" style="user-select: none;"><!--?lit$9212114395$-->Paste<!--?lit$9212114395$--></div></div><div command="delete-cell-or-selection" class="goog-menuitem " role="menuitem" id=":w" style="user-select: none;"><div class="goog-menuitem-content" style="user-select: none;"><!--?lit$9212114395$-->Delete selected cells<!--?lit$9212114395$--></div></div><div class="goog-menuseparator goog-menuitem-disabled" aria-disabled="true" role="separator" id=":x" style="user-select: none;"></div><div command="find" class="goog-menuitem " role="menuitem" id=":y" style="user-select: none;"><div class="goog-menuitem-content" style="user-select: none;"><!--?lit$9212114395$-->Find and replace<!--?lit$9212114395$--></div></div><div command="find-next" class="goog-menuitem " role="menuitem" id=":z" style="user-select: none;"><div class="goog-menuitem-content" style="user-select: none;"><!--?lit$9212114395$-->Find next<!--?lit$9212114395$--></div></div><div command="find-previous" class="goog-menuitem " role="menuitem" id=":10" style="user-select: none;"><div class="goog-menuitem-content" style="user-select: none;"><!--?lit$9212114395$-->Find previous<!--?lit$9212114395$--></div></div><div class="goog-menuseparator goog-menuitem-disabled" aria-disabled="true" role="separator" id=":11" style="user-select: none;"></div><div command="notebook-settings" class="goog-menuitem " role="menuitem" id=":12" style="user-select: none;"><div class="goog-menuitem-content" style="user-select: none;"><!--?lit$9212114395$-->Notebook settings<!--?lit$9212114395$--></div></div><div class="goog-menuseparator goog-menuitem-disabled" aria-disabled="true" role="separator" id=":13" style="user-select: none;"></div><div command="clear-outputs" class="goog-menuitem " role="menuitem" id=":14" style="user-select: none;"><div class="goog-menuitem-content" style="user-select: none;"><!--?lit$9212114395$-->Clear all outputs<!--?lit$9212114395$--></div></div></div><div class="goog-menu" id="view-menu" role="menu" aria-haspopup="true" style="display: none; user-select: none;"><!--?lit$9212114395$--><div command="show-toc-pane" class="goog-menuitem goog-option" role="menuitemcheckbox" aria-checked="false" id=":16" style="user-select: none;"><div class="goog-menuitem-content" style="user-select: none;"><div class="goog-menuitem-checkbox" style="user-select: none;"><!----><md-icon aria-hidden="true"><template shadowrootmode="open"><!----><slot></slot></template>check</md-icon> </div><!--?lit$9212114395$-->Table of contents<!--?lit$9212114395$--></div></div><div command="show-fileinfo" class="goog-menuitem " role="menuitem" id=":17" style="user-select: none;"><div class="goog-menuitem-content" style="user-select: none;"><!--?lit$9212114395$-->Notebook info<!--?lit$9212114395$--></div></div><div command="show-executedcode" class="goog-menuitem " role="menuitem" id=":18" style="user-select: none;"><div class="goog-menuitem-content" style="user-select: none;"><!--?lit$9212114395$-->Executed code history<!--?lit$9212114395$--></div></div><div command="toggle-comments-visibility" class="goog-menuitem goog-option" role="menuitemcheckbox" aria-checked="false" id=":19" style="user-select: none;"><div class="goog-menuitem-content" style="user-select: none;"><div class="goog-menuitem-checkbox" style="user-select: none;"><!----><md-icon aria-hidden="true"><template shadowrootmode="open"><!----><slot></slot></template>check</md-icon> </div><!--?lit$9212114395$-->Comments sidebar<!--?lit$9212114395$--></div></div><div class="goog-menuseparator goog-menuitem-disabled" aria-disabled="true" role="separator" id=":1a" style="user-select: none;"></div><div command="collapse-sections" class="goog-menuitem " role="menuitem" id=":1b" style="user-select: none;"><div class="goog-menuitem-content" style="user-select: none;"><!--?lit$9212114395$-->Collapse sections<!--?lit$9212114395$--></div></div><div command="expand-sections" class="goog-menuitem " role="menuitem" id=":1c" style="user-select: none;"><div class="goog-menuitem-content" style="user-select: none;"><!--?lit$9212114395$-->Expand sections<!--?lit$9212114395$--></div></div><div command="save-section-layout" class="goog-menuitem " role="menuitem" id=":1d" style="user-select: none;"><div class="goog-menuitem-content" style="user-select: none;"><!--?lit$9212114395$-->Save collapsed section layout<!--?lit$9212114395$--></div></div><div class="goog-menuseparator goog-menuitem-disabled" aria-disabled="true" role="separator" id=":1e" style="user-select: none;"></div><div command="hide-code" class="goog-menuitem " role="menuitem" id=":1f" style="user-select: none;"><div class="goog-menuitem-content" style="user-select: none;"><!--?lit$9212114395$-->Show/hide code<!--?lit$9212114395$--></div></div><div command="toggle-output" class="goog-menuitem " role="menuitem" id=":1g" style="user-select: none;"><div class="goog-menuitem-content" style="user-select: none;"><!--?lit$9212114395$-->Show/hide output<!--?lit$9212114395$--></div></div><div class="goog-menuseparator goog-menuitem-disabled" aria-disabled="true" role="separator" id=":1h" style="user-select: none;"></div><div command="focus-next-tab" class="goog-menuitem " role="menuitem" id=":1i" style="user-select: none;"><div class="goog-menuitem-content" style="user-select: none;"><!--?lit$9212114395$-->Focus next tab<!--?lit$9212114395$--></div></div><div command="focus-previous-tab" class="goog-menuitem " role="menuitem" id=":1j" style="user-select: none;"><div class="goog-menuitem-content" style="user-select: none;"><!--?lit$9212114395$-->Focus previous tab<!--?lit$9212114395$--></div></div><div command="move-tab-to-next" class="goog-menuitem " role="menuitem" id=":1k" style="user-select: none;"><div class="goog-menuitem-content" style="user-select: none;"><!--?lit$9212114395$-->Move tab to next pane<!--?lit$9212114395$--></div></div><div command="move-tab-to-prev" class="goog-menuitem " role="menuitem" id=":1l" style="user-select: none;"><div class="goog-menuitem-content" style="user-select: none;"><!--?lit$9212114395$-->Move tab to previous pane<!--?lit$9212114395$--></div></div></div><div class="goog-menu" id="insert-menu" role="menu" aria-haspopup="true" style="display: none; user-select: none;"><!--?lit$9212114395$--><div command="insert-cell-below" class="goog-menuitem " role="menuitem" id=":1n" style="user-select: none;"><div class="goog-menuitem-content" style="user-select: none;"><!--?lit$9212114395$-->Code cell<!--?lit$9212114395$--></div></div><div command="add-text" class="goog-menuitem " role="menuitem" id=":1o" style="user-select: none;"><div class="goog-menuitem-content" style="user-select: none;"><!--?lit$9212114395$-->Text cell<!--?lit$9212114395$--></div></div><div command="add-section-header" class="goog-menuitem " role="menuitem" id=":1p" style="user-select: none;"><div class="goog-menuitem-content" style="user-select: none;"><!--?lit$9212114395$-->Section header cell<!--?lit$9212114395$--></div></div><div class="goog-menuseparator goog-menuitem-disabled" aria-disabled="true" role="separator" id=":1q" style="user-select: none;"></div><div command="open-scratch-code-cell" class="goog-menuitem " role="menuitem" id=":1r" style="user-select: none;"><div class="goog-menuitem-content" style="user-select: none;"><!--?lit$9212114395$-->Scratch code cell<!--?lit$9212114395$--></div></div><div command="snippets" class="goog-menuitem " role="menuitem" id=":1s" style="user-select: none;"><div class="goog-menuitem-content" style="user-select: none;"><!--?lit$9212114395$-->Code snippets<!--?lit$9212114395$--></div></div><div class="goog-menuseparator goog-menuitem-disabled" aria-disabled="true" role="separator" id=":1t" style="user-select: none;"></div><div command="add-form-field" class="goog-menuitem " role="menuitem" id=":1u" style="user-select: none;"><div class="goog-menuitem-content" style="user-select: none;"><!--?lit$9212114395$-->Add a form field<!--?lit$9212114395$--></div></div></div><div class="goog-menu" id="runtime-menu" role="menu" aria-haspopup="true" style="display: none; user-select: none;"><!--?lit$9212114395$--><div command="runall" class="goog-menuitem " role="menuitem" id=":1w" style="user-select: none;"><div class="goog-menuitem-content" style="user-select: none;"><!--?lit$9212114395$-->Run all<!--?lit$9212114395$--></div></div><div command="runbefore" class="goog-menuitem " role="menuitem" id=":1x" style="user-select: none;"><div class="goog-menuitem-content" style="user-select: none;"><!--?lit$9212114395$-->Run before<!--?lit$9212114395$--></div></div><div command="runfocused" class="goog-menuitem " role="menuitem" id=":1y" style="user-select: none;"><div class="goog-menuitem-content" style="user-select: none;"><!--?lit$9212114395$-->Run the focused cell<!--?lit$9212114395$--></div></div><div command="runselected" class="goog-menuitem " role="menuitem" id=":1z" style="user-select: none;"><div class="goog-menuitem-content" style="user-select: none;"><!--?lit$9212114395$-->Run selection<!--?lit$9212114395$--></div></div><div command="runafter" class="goog-menuitem " role="menuitem" id=":20" style="user-select: none;"><div class="goog-menuitem-content" style="user-select: none;"><!--?lit$9212114395$-->Run after<!--?lit$9212114395$--></div></div><div class="goog-menuseparator goog-menuitem-disabled" aria-disabled="true" role="separator" id=":21" style="user-select: none;"></div><div command="interrupt" class="goog-menuitem " role="menuitem" id=":22" style="user-select: none;"><div class="goog-menuitem-content" style="user-select: none;"><!--?lit$9212114395$-->Interrupt execution<!--?lit$9212114395$--></div></div><div command="restart" class="goog-menuitem " role="menuitem" id=":23" style="user-select: none;"><div class="goog-menuitem-content" style="user-select: none;"><!--?lit$9212114395$-->Restart session<!--?lit$9212114395$--></div></div><div command="restart-and-run-all" class="goog-menuitem " role="menuitem" id=":24" style="user-select: none;"><div class="goog-menuitem-content" style="user-select: none;"><!--?lit$9212114395$-->Restart session and run all<!--?lit$9212114395$--></div></div><div command="powerwash-current-vm" class="goog-menuitem " role="menuitem" id=":25" style="user-select: none;"><div class="goog-menuitem-content" style="user-select: none;"><!--?lit$9212114395$-->Disconnect and delete runtime<!--?lit$9212114395$--></div></div><div class="goog-menuseparator goog-menuitem-disabled" aria-disabled="true" role="separator" id=":26" style="user-select: none;"></div><div command="change-runtime-type" class="goog-menuitem " role="menuitem" id=":27" style="user-select: none;"><div class="goog-menuitem-content" style="user-select: none;"><!--?lit$9212114395$-->Change runtime type<!--?lit$9212114395$--></div></div><div class="goog-menuseparator goog-menuitem-disabled" aria-disabled="true" role="separator" id=":28" style="user-select: none;"></div><div command="manage-sessions" class="goog-menuitem " role="menuitem" id=":29" style="user-select: none;"><div class="goog-menuitem-content" style="user-select: none;"><!--?lit$9212114395$-->Manage sessions<!--?lit$9212114395$--></div></div><div command="open-resource-viewer" class="goog-menuitem " role="menuitem" id=":2a" style="user-select: none;"><div class="goog-menuitem-content" style="user-select: none;"><!--?lit$9212114395$-->View resources<!--?lit$9212114395$--></div></div><div command="view-runtime-logs" class="goog-menuitem " role="menuitem" id=":2b" style="user-select: none;"><div class="goog-menuitem-content" style="user-select: none;"><!--?lit$9212114395$-->View runtime logs<!--?lit$9212114395$--></div></div></div><div class="goog-menu" id="tools-menu" role="menu" aria-haspopup="true" style="display: none; user-select: none;"><!--?lit$9212114395$--><div command="show-command-palette" class="goog-menuitem " role="menuitem" id=":2d" style="user-select: none;"><div class="goog-menuitem-content" style="user-select: none;"><!--?lit$9212114395$-->Command palette<!--?lit$9212114395$--></div></div><div class="goog-menuseparator goog-menuitem-disabled" aria-disabled="true" role="separator" id=":2e" style="user-select: none;"></div><div command="preferences" class="goog-menuitem " role="menuitem" id=":2f" style="user-select: none;"><div class="goog-menuitem-content" style="user-select: none;"><!--?lit$9212114395$-->Settings<!--?lit$9212114395$--></div></div><div command="shortcuts" class="goog-menuitem " role="menuitem" id=":2g" style="user-select: none;"><div class="goog-menuitem-content" style="user-select: none;"><!--?lit$9212114395$-->Keyboard shortcuts<!--?lit$9212114395$--></div></div><div class="goog-menuseparator goog-menuitem-disabled" aria-disabled="true" role="separator" id=":2h" style="user-select: none;"></div><div command="open-differ" class="goog-menuitem " role="menuitem" id=":2i" style="user-select: none;"><div class="goog-menuitem-content" style="user-select: none;"><!--?lit$9212114395$-->Diff notebooks<!--?lit$9212114395$--> <span class="screenreader-only" style="user-select: none;"><!--?lit$9212114395$-->(opens in a new tab)</span></div></div></div><div class="goog-menu" id="help-menu" role="menu" aria-haspopup="true" style="display: none; user-select: none;"><!--?lit$9212114395$--><div command="faq" class="goog-menuitem " role="menuitem" id=":2k" style="user-select: none;"><div class="goog-menuitem-content" style="user-select: none;"><!--?lit$9212114395$-->Frequently asked questions<!--?lit$9212114395$--></div></div><div command="view-relnotes" class="goog-menuitem " role="menuitem" id=":2l" style="user-select: none;"><div class="goog-menuitem-content" style="user-select: none;"><!--?lit$9212114395$-->View release notes<!--?lit$9212114395$--></div></div><div command="snippets" class="goog-menuitem " role="menuitem" id=":2m" style="user-select: none;"><div class="goog-menuitem-content" style="user-select: none;"><!--?lit$9212114395$-->Search code snippets<!--?lit$9212114395$--></div></div><div class="goog-menuseparator goog-menuitem-disabled" aria-disabled="true" role="separator" id=":2n" style="user-select: none;"></div><div command="report-bug" class="goog-menuitem " role="menuitem" id=":2o" style="user-select: none;"><div class="goog-menuitem-content" style="user-select: none;"><!--?lit$9212114395$-->Report a bug<!--?lit$9212114395$--></div></div><div command="report-abuse" class="goog-menuitem " role="menuitem" id=":2p" style="user-select: none;"><div class="goog-menuitem-content" style="user-select: none;"><!--?lit$9212114395$-->Report Drive abuse<!--?lit$9212114395$--></div></div><div command="send-feedback" class="goog-menuitem " role="menuitem" id=":2q" style="user-select: none;"><div class="goog-menuitem-content" style="user-select: none;"><!--?lit$9212114395$-->Send feedback<!--?lit$9212114395$--></div></div><div command="view-tos" class="goog-menuitem " role="menuitem" id=":2r" style="user-select: none;"><div class="goog-menuitem-content" style="user-select: none;"><!--?lit$9212114395$-->View terms of service<!--?lit$9212114395$--></div></div></div><dialog class="doc-comments-area" aria-label="Comments"><!----><div class="doc-comments-buttons">
        <md-text-button command="add-comment" value="" has-icon=""><template shadowrootmode="open" shadowrootdelegatesfocus><!---->
      <!--?lit$9212114395$-->
      <div class="background"></div>
      <md-focus-ring part="focus-ring" for="button" aria-hidden="true"><template shadowrootmode="open"><!----></template></md-focus-ring>
      <md-ripple part="ripple" for="button" aria-hidden="true"><template shadowrootmode="open"><!----><div class="surface   "></div></template></md-ripple>
      <!--?lit$9212114395$--><button id="button" class="button">
      <!--?lit$9212114395$-->
      <span class="touch"></span>
      <!--?lit$9212114395$--><slot name="icon"></slot>
      <span class="label"><slot></slot></span>
      <!--?lit$9212114395$-->
    
    </button>
    </template>
          <md-icon slot="icon" filled="" aria-hidden="true"><template shadowrootmode="open"><!----><slot></slot></template>comment</md-icon>
          <!--?lit$9212114395$-->Add a comment
        </md-text-button>
      </div></dialog><div class="thumbnail"></div><div class="monaco-aria-container"><div class="monaco-alert" role="alert" aria-atomic="true"></div><div class="monaco-alert" role="alert" aria-atomic="true"></div><div class="monaco-status" role="complementary" aria-live="polite" aria-atomic="true"></div><div class="monaco-status" role="complementary" aria-live="polite" aria-atomic="true"></div></div><iframe id="apiproxy59b2073d82bfa5c564f0ce0efec1e606d5c893d10.45500435" name="apiproxy59b2073d82bfa5c564f0ce0efec1e606d5c893d10.45500435" src="./rainfall_files/proxy.html" tabindex="-1" aria-hidden="true" style="width: 1px; height: 1px; position: absolute; top: -100px; display: none;"></iframe><span id="PING_IFRAME_FORM_DETECTION" style="display: none;"></span><div><div class="grecaptcha-badge" data-style="bottomright" style="width: 256px; height: 60px; position: fixed; visibility: hidden; display: block; transition: right 0.3s ease 0s; bottom: 14px; right: -186px; box-shadow: gray 0px 0px 5px; border-radius: 2px; overflow: hidden;"><div class="grecaptcha-logo"><iframe title="reCAPTCHA" width="256" height="60" role="presentation" name="a-lr01d4fa0jas" frameborder="0" scrolling="no" sandbox="allow-forms allow-popups allow-same-origin allow-scripts allow-top-navigation allow-modals allow-popups-to-escape-sandbox allow-storage-access-by-user-activation" src="./rainfall_files/anchor.html"></iframe></div><div class="grecaptcha-error"></div><textarea id="g-recaptcha-response-100000" name="g-recaptcha-response" class="g-recaptcha-response" style="width: 250px; height: 40px; border: 1px solid rgb(193, 193, 193); margin: 10px 25px; padding: 0px; resize: none; display: none;"></textarea></div><iframe style="display: none;" src="./rainfall_files/saved_resource.html"></iframe></div><iframe src="./rainfall_files/bscframe.html" style="display: none;"></iframe><iframe id="hfcr" src="./rainfall_files/RotateCookiesPage.html" style="display: none;"></iframe></body></html>