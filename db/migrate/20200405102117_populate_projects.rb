class PopulateProjects < ActiveRecord::Migration[6.0]
  def up
    Project.create(
      name: "Visière de protection",
      plural_name: "Visières de protection",
      short_description: "Les visières de protection sont importantes pour éviter les projections lors des soins apportés aux patients COVID-19. Il existe de nombreux modèles développés par des initiatives indépendantes. Attention, il s'agit de dispositifs médicaux : leur production, même urgente, doit bénéficier d'un contrôle qualité strict. Voici deux options pour vous procurer rapidement des visières fiables.",
      slug: "visiere-de-protection",
      status: "ready"
    )

    Project.create(
      name: "Poignée sans contact",
      plural_name: "poignées sans contact",
      short_description: "Le contact avec les poignées de porte est source de contamination virale. Nous avons développé un dispositif qui permet d'ouvrir les portes avec l'avant-bras. Vérifiez avec nous que ce dispositif est adapté à votre poignée.",
      slug: "poignee-sans-contact",
      status: "ready"
    )

    Project.create(
      name: "Masque de protection",
      plural_name: "Masques de protection",
      short_description: "Pour pallier la pénurie de masques en tissu, il est possible d'imprimer des structures en 3D dans lesquelles s'insèrent des filtres. COVID3D travaille sur la partie en résine de ces masques.",
      slug: "masque-de-protection",
      status: "working"
    )

    Project.create(
      name: "Pousse-seringue",
      plural_name: "Pousse-seringues",
      short_description: "Nous voulons développer un modèle opensource de pousse-seringue dont l'ensemble de la partie non motorisée sera imprimable en 3D.",
      slug: "pousse-seringue",
      status: "working"
    )

    Project.create(
      name: "Dispositif d'intubation",
      plural_name: "Dispositifs d'intubation",
      short_description: "Certains composants des dispositifs d'intubation sont à usage unique. COVID3D travaille à produire ces dispositifs afin d'anticiper les demandes.",
      slug: "intubation",
      status: "working"
    )

    Project.create(
      name: "Masque de plongée",
      plural_name: "Masques de plongée",
      short_description: "Des masques intégraux de plongée ont été utilisés pour la ventilation des patients et la protection des soignants (en Italie). Ces deux utilisations posent des problèmes de connectique, COVID3D travaille sur ces aspects.",
      slug: "masque-de-plongee",
      status: "working"
    )

    Project.create(
      name: "Respirateur",
      plural_name: "Respirateurs",
      short_description: "La conception d'un respirateur est complexe, il existe plusieurs initiatives industrielles visant à construire des respirateurs imprimés en 3d en un temps record. COVID3D participe à ces projets en partageant sa plateforme de production.",
      slug: "respirateur",
      status: "working",
      description: <<~DESCRIPTION
        ### Introduction

        Ce projet a pour but de sourcer, fédérer et accompagner l’ensemble des initiatives visant à la mise sur le marché urgente de respirateurs alternatifs validés dans un contexte de pénurie de respirateurs lié à la crise sanitaire COVID19. Ces respirateurs auront pour objectif une utilisation principalement en pré et en post-réanimation et ne sont pour l'instant pas des alternatives aux respirateurs industriels de réanimation.

        ### Mission

        * Réalisation d'une veille
        * Mise en relation des porteurs de projets avec des experts en réanimation et en ventilation
        * Mise à disposition de matériel et de locaux de tests (bancs d'essai, poumons-tests)
        * Accompagnement à la réalisation d'essais cliniques et à la validation scientifique des projets
        * Aide à l'industrialisation très rapide après certification
        * Gestion au sein de l'AP-HP et aide à la gestion des besoins externes AP-HP

        ### Équipe

        * M. Jéremy Adam - Président Fondateur Bone3D et PhD Biomechanics
        * Dr. Thomas Baugnon - Service d'Anesthésie-Réanimation de l'Hôpital Necker Enfants Malades AP-HP, Conseiller médical innovation managériale & organisationnelle DGOS
        * Dr. Guillaume Carteaux - Service de Médecine Intensive Réanimation de l'Hôpital Henri Mondor
        * Pr. Jean-Michel Constantin - PUPH du Service d'Anesthésie-Réanimation - Hôpital La Pitié Salpêtrière, AP-HP et Directeur du GRC ARPE
        * Pr. Souhayl Dahmani - Chef de Service du Département d’Anesthésiologie Réanimation
        * Dr. Laurent Dupic - PH du Service d'Anesthésie-Réanimation - Hôpital Necker Enfants Malades
        * Pr. Erwan L’Her - Chef de Service de Médecine Intensive et Réanimation - CHU Brest
        * Pr. Frédéric Lofaso - PU-PH du Service de Pneumologie, Hôpital de Garches
        * Dr. Cécile Monteil - Coordinatrice du groupe de travail, PHC du Service des Urgences Pédiatriques - Hôpital Robert Debré, AP-HP et Directrice Médicale du département de simulation iLumens, Université de Paris
        * Dr. Frédérique Servin - Service d'Anesthésie-Réanimation de l'Hôpital Bichat, AP-HP

        ### Rejoignez-nous

        Contactez nous à l'adresse cecile.monteil@aphp.fr ou 3d.covid@aphp.fr
      DESCRIPTION
    )

    Project.create(
      name: "Bouclier nasal",
      plural_name: "Boucliers nasaux",
      short_description: "Les boucliers nasaux servent à limiter les risques d'escarres liés aux masques FPP2 dans la zone du nez. COVID3D imprime des moules en résines dans lesquels du silicone médical est injécté pour former le bouclier.",
      slug: "bouclier-nasal",
      status: "working"
    )

    Project.create(
      name: "Monture de lunettes de protection",
      plural_name: "Montures de lunettes de protection",
      short_description: "Les lunettes de protection sont composées d'une monture souple en U et d'une visière transparente. Nous produisons l'armature de ces lunettes.",
      slug: "monture-de-lunettes-de-protection",
      status: "ready"
    )

    Project.create(
      name: "Masque de ventilation non-invasive",
      plural_name: "Masques de ventilation non-invasive",
      short_description: "Nous sommes en train de valider un masque de ventilation non-invasive modulable basse et haute concentration.",
      slug: "masque-de-ventilation",
      status: "working"
    )

    Project.create(
      name: "Pousse-bouton",
      plural_name: "Pousse-boutons",
      short_description: "Ce petit objet permet d'appuyer sur différents boutons et interrupteurs sans risques de contamination.",
      slug: "pousse-bouton",
      status: "working"
    )

    Project.create(
      name: "Aspirateur à mucosités",
      plural_name: "Aspirateurs à mucosités",
      short_description: "Ce dispositif médical est utilisé en réanimation pour les patients avec d'importantes sécrétions.",
      slug: "aspirateur-a-mucosites",
      status: "working"
    )
  end

  def down
    ActiveRecord::Base.connection.execute("TRUNCATE projects RESTART IDENTITY")
  end
end
