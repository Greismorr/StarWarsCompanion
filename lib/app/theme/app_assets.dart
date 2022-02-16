class AppAssets {
  //Imagens salvas no assets do App
  static const loadingAnimation = "assets/loading.gif";
  static const backgroundImage = "assets/background.jpg";
  static const avatarBackgroundImage = "assets/background_avatar_page.png";
  static const splashImage = "assets/splash_image.png";

  //Imagens dos filmes vindas da rede, hospedadas no Cloudinary
  static const moviesImageMap = {
    "A New Hope":
        "https://res.cloudinary.com/dtlmxp4oo/image/upload/v1644591945/New_Hope_dl55oi.jpg",
    "The Empire Strikes Back":
        "https://res.cloudinary.com/dtlmxp4oo/image/upload/v1644591945/The_Empire_Strikes_Back_jfrzlh.jpg",
    "Return of the Jedi":
        "https://res.cloudinary.com/dtlmxp4oo/image/upload/v1644591945/Return_of_jedi_n4qd52.jpg",
    "The Phantom Menace":
        "https://res.cloudinary.com/dtlmxp4oo/image/upload/v1644591945/Phantom_menace_jymk5k.jpg",
    "Attack of the Clones":
        "https://res.cloudinary.com/dtlmxp4oo/image/upload/v1644591945/Attack_of_the_clones_k53s5w.jpg",
    "Revenge of the Sith":
        "https://res.cloudinary.com/dtlmxp4oo/image/upload/v1644591939/Revenge_of_the_sith_bmmkl7.jpg",
  };

  //Nomes das espécies a partir do id no banco do SWAPI
  static const speciesNameMap = {
    "1/": "Human",
    "2/": "Droid",
    "3/": "Wookie",
    "4/": "Rodian",
    "5/": "Hutt",
    "6/": "Yoda's species",
    "7/": "Trandoshan",
    "8/": "Mon Calamari",
    "9/": "Ewok",
    "10/": "Sullustan",
    "11/": "Neimodian",
    "12/": "Gungan",
    "13/": "Toydarian",
    "14/": "Hutt",
    "15/": "Dug",
    "16/": "Twi'lek",
    "17/": "Aleena",
    "18/": "Vulptereen",
    "19/": "Xexto",
    "20/": "Toong",
    "21/": "Cerean",
    "22/": "Nautolan",
    "23/": "Zabrak ",
    "24/": "Tholothian",
    "25/": "Iktotchi",
    "26/": "Quermian",
    "27/": "Kel Dor",
    "28/": "Chagrian",
    "29/": "Geonosian",
    "30/": "Mirialan",
    "31/": "Clawdite",
    "32/": "Besalisk",
    "33/": "Kaminoan",
    "34/": "Skakoan",
    "35/": "Muun",
    "36/": "Togruta",
    "37/": "Kaleesh",
    "38/": "Pau'an",
    "Unknown": "Unknown",
  };

  //Imagens das espécies vindas da rede, hospedadas no Cloudinary
  static const speciesImageMap = {
    "Human":
        "https://res.cloudinary.com/dtlmxp4oo/image/upload/v1644591943/Human_gwwauj.jpg",
    "Droid":
        "https://res.cloudinary.com/dtlmxp4oo/image/upload/v1644591943/Droid_jmmmev.jpg",
    "Wookie":
        "https://res.cloudinary.com/dtlmxp4oo/image/upload/v1644591941/Wookie_zdzvjj.jpg",
    "Rodian":
        "https://res.cloudinary.com/dtlmxp4oo/image/upload/v1644591942/Rodian_lrdtfb.jpg",
    "Hutt":
        "https://res.cloudinary.com/dtlmxp4oo/image/upload/v1644591944/Hutt_mdhtom.jpg",
    "Yoda's species":
        "https://res.cloudinary.com/dtlmxp4oo/image/upload/v1644591941/Yoda_s_Species_dwnpld.jpg",
    "Trandoshan":
        "https://res.cloudinary.com/dtlmxp4oo/image/upload/v1644591940/Trandoshan_jwlse5.png",
    "Mon Calamari":
        "https://res.cloudinary.com/dtlmxp4oo/image/upload/v1644591942/Mon_Calamari_lhkqev.jpg",
    "Ewok":
        "https://res.cloudinary.com/dtlmxp4oo/image/upload/v1644591943/Ewok_hl2tox.jpg",
    "Sullustan":
        "https://res.cloudinary.com/dtlmxp4oo/image/upload/v1644591944/Sullustan_pvqheq.jpg",
    "Neimodian":
        "https://res.cloudinary.com/dtlmxp4oo/image/upload/v1644591945/Neimoidian_bazznt.jpg",
    "Gungan":
        "https://res.cloudinary.com/dtlmxp4oo/image/upload/v1644591943/Gungan_uqxe3m.jpg",
    "Toydarian":
        "https://res.cloudinary.com/dtlmxp4oo/image/upload/v1644591942/Toydarians_ztplwt.jpg",
    "Dug":
        "https://res.cloudinary.com/dtlmxp4oo/image/upload/v1644591943/Dug_fxtkfk.jpg",
    "Twi'lek":
        "https://res.cloudinary.com/dtlmxp4oo/image/upload/v1644591941/Twi_lek_dtot7v.png",
    "Aleena":
        "https://res.cloudinary.com/dtlmxp4oo/image/upload/v1644591944/Aleena_uihj8p.jpg",
    "Vulptereen":
        "https://res.cloudinary.com/dtlmxp4oo/image/upload/v1644591942/Vulptereen_k8rblm.jpg",
    "Xexto":
        "https://res.cloudinary.com/dtlmxp4oo/image/upload/v1644591941/Xexto_hkcyhb.jpg",
    "Toong":
        "https://res.cloudinary.com/dtlmxp4oo/image/upload/v1644591942/Toong_xgiyz8.jpg",
    "Cerean":
        "https://res.cloudinary.com/dtlmxp4oo/image/upload/v1644591944/Cerean_ot3ilp.jpg",
    "Nautolan":
        "https://res.cloudinary.com/dtlmxp4oo/image/upload/v1644594120/Nautolan_wwlkbt.jpg",
    "Zabrak ":
        "https://res.cloudinary.com/dtlmxp4oo/image/upload/v1644591941/Zabrak_xf6dda.jpg",
    "Tholothian":
        "https://res.cloudinary.com/dtlmxp4oo/image/upload/v1644591942/Tholothian_ifnixf.jpg",
    "Iktotchi":
        "https://res.cloudinary.com/dtlmxp4oo/image/upload/v1644591941/Ikotchi_y8td5g.png",
    "Quermian":
        "https://res.cloudinary.com/dtlmxp4oo/image/upload/v1644591941/Quermian_yiicsf.png",
    "Kel Dor":
        "https://res.cloudinary.com/dtlmxp4oo/image/upload/v1644591943/Kel_dor_w7xlpd.jpg",
    "Chagrian":
        "https://res.cloudinary.com/dtlmxp4oo/image/upload/v1644591944/Chagrian_hdrec6.jpg",
    "Geonosian":
        "https://res.cloudinary.com/dtlmxp4oo/image/upload/v1644591945/Geonosian_w1nbyj.jpg",
    "Mirialan":
        "https://res.cloudinary.com/dtlmxp4oo/image/upload/v1644591940/Mirialan_yoibek.jpg",
    "Clawdite":
        "https://res.cloudinary.com/dtlmxp4oo/image/upload/v1644591940/Clawdite_k55tyn.jpg",
    "Besalisk":
        "https://res.cloudinary.com/dtlmxp4oo/image/upload/v1644591944/Besalisk_xym235.jpg",
    "Kaminoan":
        "https://res.cloudinary.com/dtlmxp4oo/image/upload/v1644591940/Kaminoan_i7x6oz.jpg",
    "Skakoan":
        "https://res.cloudinary.com/dtlmxp4oo/image/upload/v1644591942/Skakoan_etoyyp.jpg",
    "Muun":
        "https://res.cloudinary.com/dtlmxp4oo/image/upload/v1644591940/Muun_dsfa4d.jpg",
    "Togruta":
        "https://res.cloudinary.com/dtlmxp4oo/image/upload/v1644591942/Togruta_shhjgl.jpg",
    "Kaleesh":
        "https://res.cloudinary.com/dtlmxp4oo/image/upload/v1644591943/Kaleesh_dmjxz0.jpg",
    "Pau'an":
        "https://res.cloudinary.com/dtlmxp4oo/image/upload/v1644591944/Pau_an_zw97pu.jpg",
  };

  static const placeholderImage =
      "https://res.cloudinary.com/dtlmxp4oo/image/upload/v1644594674/1200px-Star_Wars_Logo.svg_aot6wk.png";
}
