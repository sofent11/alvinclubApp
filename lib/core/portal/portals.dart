class Portal {
  const Portal({
    required this.code,
    required this.name,
    required this.id,
    required this.currency,
    required this.language,
  });

  final String code;
  final String name;
  final int id;
  final String currency;
  final String language;
}

const List<Portal> portals = [
  Portal(code: 'CA', name: 'Canada', id: 1, currency: 'CAD', language: 'en-US'),
  Portal(code: 'US', name: 'United States', id: 2, currency: 'USD', language: 'en-US'),
  Portal(code: 'AU', name: 'Australia', id: 4, currency: 'AUD', language: 'en-US'),
  Portal(code: 'GB', name: 'United Kingdom', id: 5, currency: 'GBP', language: 'en-US'),
  Portal(code: 'DE', name: 'Germany', id: 6, currency: 'EUR', language: 'de-DE'),
  Portal(code: 'FR', name: 'France', id: 7, currency: 'EUR', language: 'fr-FR'),
  Portal(code: 'IT', name: 'Italy', id: 8, currency: 'EUR', language: 'it-IT'),
  Portal(code: 'ES', name: 'Spain', id: 9, currency: 'EUR', language: 'es-ES'),
  Portal(code: 'PT', name: 'Portugal', id: 10, currency: 'EUR', language: 'pt-PT'),
  Portal(code: 'HU', name: 'Hungary', id: 11, currency: 'EUR', language: 'en-US'),
  Portal(code: 'RO', name: 'Romania', id: 12, currency: 'EUR', language: 'en-US'),
  Portal(code: 'BE', name: 'Belgium', id: 13, currency: 'EUR', language: 'en-US'),
  Portal(code: 'NL', name: 'Netherlands', id: 14, currency: 'EUR', language: 'en-US'),
  Portal(code: 'SE', name: 'Sweden', id: 15, currency: 'EUR', language: 'en-US'),
  Portal(code: 'CH', name: 'Switzerland', id: 16, currency: 'EUR', language: 'en-US'),
];

const Portal defaultPortal = portals[1];
