// /// kind : "books#volume"
// /// id : "buh1DwAAQBAJ"
// /// etag : "Y7Pq4O7lpaI"
// /// selfLink : "https://www.googleapis.com/books/v1/volumes/buh1DwAAQBAJ"
// /// volumeInfo : {"title":"Hands-On Object-Oriented Programming with Kotlin","subtitle":"Build robust software with reusable code using OOP principles and design patterns in Kotlin","authors":["Abid Khan","Igor Kucherenko"],"publisher":"Packt Publishing Ltd","publishedDate":"2018-10-31","description":"Learn everything you need to know about object-oriented programming with the latest features of Kotlin 1.3 Key FeaturesA practical guide to understand objects and classes in KotlinLearn to write asynchronous, non-blocking codes with Kotlin coroutinesExplore Encapsulation, Inheritance, Polymorphism, and Abstraction in KotlinBook Description Kotlin is an object-oriented programming language. The book is based on the latest version of Kotlin. The book provides you with a thorough understanding of programming concepts, object-oriented programming techniques, and design patterns. It includes numerous examples, explanation of concepts and keynotes. Where possible, examples and programming exercises are included. The main purpose of the book is to provide a comprehensive coverage of Kotlin features such as classes, data classes, and inheritance. It also provides a good understanding of design pattern and how Kotlin syntax works with object-oriented techniques. You will also gain familiarity with syntax in this book by writing labeled for loop and when as an expression. An introduction to the advanced concepts such as sealed classes and package level functions and coroutines is provided and we will also learn how these concepts can make the software development easy. Supported libraries for serialization, regular expression and testing are also covered in this book. By the end of the book, you would have learnt building robust and maintainable software with object oriented design patterns in Kotlin. What you will learnGet an overview of the Kotlin programming languageDiscover Object-oriented programming techniques in Kotlin Understand Object-oriented design patternsUncover multithreading by Kotlin wayUnderstand about arrays and collectionsUnderstand the importance of object-oriented design patternsUnderstand about exception handling and testing in OOP with KotlinWho this book is for This book is for programmers and developers who wish to learn Object-oriented programming principles and apply them to build robust and scalable applications. Basic knowledge in Kotlin programming is assumed","industryIdentifiers":[{"type":"ISBN_13","identifier":"9781789619645"},{"type":"ISBN_10","identifier":"1789619645"}],"readingModes":{"text":true,"image":true},"pageCount":370,"printType":"BOOK","categories":["Computers"],"maturityRating":"NOT_MATURE","allowAnonLogging":true,"contentVersion":"1.2.2.0.preview.3","panelizationSummary":{"containsEpubBubbles":false,"containsImageBubbles":false},"imageLinks":{"smallThumbnail":"http://books.google.com/books/content?id=buh1DwAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api","thumbnail":"http://books.google.com/books/content?id=buh1DwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"},"language":"en","previewLink":"http://books.google.com.eg/books?id=buh1DwAAQBAJ&printsec=frontcover&dq=programming&hl=&cd=1&source=gbs_api","infoLink":"https://play.google.com/store/books/details?id=buh1DwAAQBAJ&source=gbs_api","canonicalVolumeLink":"https://play.google.com/store/books/details?id=buh1DwAAQBAJ"}
// /// saleInfo : {"country":"EG","saleability":"FOR_SALE","isEbook":true,"listPrice":{"amount":1408.58,"currencyCode":"EGP"},"retailPrice":{"amount":1408.58,"currencyCode":"EGP"},"buyLink":"https://play.google.com/store/books/details?id=buh1DwAAQBAJ&rdid=book-buh1DwAAQBAJ&rdot=1&source=gbs_api","offers":[{"finskyOfferType":1,"listPrice":{"amountInMicros":1408580000,"currencyCode":"EGP"},"retailPrice":{"amountInMicros":1408580000,"currencyCode":"EGP"}}]}
// /// accessInfo : {"country":"EG","viewability":"PARTIAL","embeddable":true,"publicDomain":false,"textToSpeechPermission":"ALLOWED","epub":{"isAvailable":true},"pdf":{"isAvailable":true},"webReaderLink":"http://play.google.com/books/reader?id=buh1DwAAQBAJ&hl=&source=gbs_api","accessViewStatus":"SAMPLE","quoteSharingAllowed":false}
// /// searchInfo : {"textSnippet":"Supported libraries for serialization, regular expression and testing are also covered in this book. By the end of the book, you would have learnt building robust and maintainable software with object oriented design patterns in Kotlin."}
//
// class BooksModel {
//   BooksModel({
//       this.kind,
//       this.id,
//       this.etag,
//       this.selfLink,
//       this.volumeInfo,
//       this.saleInfo,
//       this.accessInfo,
//       this.searchInfo,});
//
//   BooksModel.fromJson(dynamic json) {
//     kind = json['kind'];
//     id = json['id'];
//     etag = json['etag'];
//     selfLink = json['selfLink'];
//     volumeInfo = json['volumeInfo'] != null ? VolumeInfo.fromJson(json['volumeInfo']) : null;
//     saleInfo = json['saleInfo'] != null ? SaleInfo.fromJson(json['saleInfo']) : null;
//     accessInfo = json['accessInfo'] != null ? AccessInfo.fromJson(json['accessInfo']) : null;
//     searchInfo = json['searchInfo'] != null ? SearchInfo.fromJson(json['searchInfo']) : null;
//   }
//   String? kind;
//   String? id;
//   String? etag;
//   String? selfLink;
//   VolumeInfo? volumeInfo;
//   SaleInfo? saleInfo;
//   AccessInfo? accessInfo;
//   SearchInfo? searchInfo;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['kind'] = kind;
//     map['id'] = id;
//     map['etag'] = etag;
//     map['selfLink'] = selfLink;
//     if (volumeInfo != null) {
//       map['volumeInfo'] = volumeInfo?.toJson();
//     }
//     if (saleInfo != null) {
//       map['saleInfo'] = saleInfo?.toJson();
//     }
//     if (accessInfo != null) {
//       map['accessInfo'] = accessInfo?.toJson();
//     }
//     if (searchInfo != null) {
//       map['searchInfo'] = searchInfo?.toJson();
//     }
//     return map;
//   }
//
// }
//
// /// textSnippet : "Supported libraries for serialization, regular expression and testing are also covered in this book. By the end of the book, you would have learnt building robust and maintainable software with object oriented design patterns in Kotlin."
//
// class SearchInfo {
//   SearchInfo({
//       this.textSnippet,});
//
//   SearchInfo.fromJson(dynamic json) {
//     textSnippet = json['textSnippet'];
//   }
//   String? textSnippet;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['textSnippet'] = textSnippet;
//     return map;
//   }
//
// }
//
// /// country : "EG"
// /// viewability : "PARTIAL"
// /// embeddable : true
// /// publicDomain : false
// /// textToSpeechPermission : "ALLOWED"
// /// epub : {"isAvailable":true}
// /// pdf : {"isAvailable":true}
// /// webReaderLink : "http://play.google.com/books/reader?id=buh1DwAAQBAJ&hl=&source=gbs_api"
// /// accessViewStatus : "SAMPLE"
// /// quoteSharingAllowed : false
//
// class AccessInfo {
//   AccessInfo({
//       this.country,
//       this.viewability,
//       this.embeddable,
//       this.publicDomain,
//       this.textToSpeechPermission,
//       this.epub,
//       this.pdf,
//       this.webReaderLink,
//       this.accessViewStatus,
//       this.quoteSharingAllowed,});
//
//   AccessInfo.fromJson(dynamic json) {
//     country = json['country'];
//     viewability = json['viewability'];
//     embeddable = json['embeddable'];
//     publicDomain = json['publicDomain'];
//     textToSpeechPermission = json['textToSpeechPermission'];
//     epub = json['epub'] != null ? Epub.fromJson(json['epub']) : null;
//     pdf = json['pdf'] != null ? Pdf.fromJson(json['pdf']) : null;
//     webReaderLink = json['webReaderLink'];
//     accessViewStatus = json['accessViewStatus'];
//     quoteSharingAllowed = json['quoteSharingAllowed'];
//   }
//   String? country;
//   String? viewability;
//   bool? embeddable;
//   bool? publicDomain;
//   String? textToSpeechPermission;
//   Epub? epub;
//   Pdf? pdf;
//   String? webReaderLink;
//   String? accessViewStatus;
//   bool? quoteSharingAllowed;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['country'] = country;
//     map['viewability'] = viewability;
//     map['embeddable'] = embeddable;
//     map['publicDomain'] = publicDomain;
//     map['textToSpeechPermission'] = textToSpeechPermission;
//     if (epub != null) {
//       map['epub'] = epub?.toJson();
//     }
//     if (pdf != null) {
//       map['pdf'] = pdf?.toJson();
//     }
//     map['webReaderLink'] = webReaderLink;
//     map['accessViewStatus'] = accessViewStatus;
//     map['quoteSharingAllowed'] = quoteSharingAllowed;
//     return map;
//   }
//
// }
//
// /// isAvailable : true
//
// class Pdf {
//   Pdf({
//       this.isAvailable,});
//
//   Pdf.fromJson(dynamic json) {
//     isAvailable = json['isAvailable'];
//   }
//   bool? isAvailable;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['isAvailable'] = isAvailable;
//     return map;
//   }
//
// }
//
// /// isAvailable : true
//
// class Epub {
//   Epub({
//       this.isAvailable,});
//
//   Epub.fromJson(dynamic json) {
//     isAvailable = json['isAvailable'];
//   }
//   bool? isAvailable;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['isAvailable'] = isAvailable;
//     return map;
//   }
//
// }
//
// /// country : "EG"
// /// saleability : "FOR_SALE"
// /// isEbook : true
// /// listPrice : {"amount":1408.58,"currencyCode":"EGP"}
// /// retailPrice : {"amount":1408.58,"currencyCode":"EGP"}
// /// buyLink : "https://play.google.com/store/books/details?id=buh1DwAAQBAJ&rdid=book-buh1DwAAQBAJ&rdot=1&source=gbs_api"
// /// offers : [{"finskyOfferType":1,"listPrice":{"amountInMicros":1408580000,"currencyCode":"EGP"},"retailPrice":{"amountInMicros":1408580000,"currencyCode":"EGP"}}]
//
// class SaleInfo {
//   SaleInfo({
//       this.country,
//       this.saleability,
//       this.isEbook,
//       this.listPrice,
//       this.retailPrice,
//       this.buyLink,
//       this.offers,});
//
//   SaleInfo.fromJson(dynamic json) {
//     country = json['country'];
//     saleability = json['saleability'];
//     isEbook = json['isEbook'];
//     listPrice = json['listPrice'];
//     retailPrice = json['retailPrice'] != null ? RetailPrice.fromJson(json['retailPrice']) : null;
//     buyLink = json['buyLink'];
//     if (json['offers'] != null) {
//       offers = [];
//       json['offers'].forEach((v) {
//         offers?.add(Offers.fromJson(v));
//       });
//     }
//   }
//   String? country;
//   String? saleability;
//   bool? isEbook;
//   ListPrice? listPrice;
//   RetailPrice? retailPrice;
//   String? buyLink;
//   List<Offers>? offers;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['country'] = country;
//     map['saleability'] = saleability;
//     map['isEbook'] = isEbook;
//     map['listPrice'] = listPrice;
//     if (retailPrice != null) {
//       map['retailPrice'] = retailPrice?.toJson();
//     }
//     map['buyLink'] = buyLink;
//     if (offers != null) {
//       map['offers'] = offers?.map((v) => v.toJson()).toList();
//     }
//     return map;
//   }
//
// }
//
// /// finskyOfferType : 1
// /// listPrice : {"amountInMicros":1408580000,"currencyCode":"EGP"}
// /// retailPrice : {"amountInMicros":1408580000,"currencyCode":"EGP"}
//
// class Offers {
//   Offers({
//       this.finskyOfferType,
//       this.listPrice,
//       this.retailPrice,});
//
//   Offers.fromJson(dynamic json) {
//     finskyOfferType = json['finskyOfferType'];
//     listPrice = json['listPrice'];
//     retailPrice = json['retailPrice'] != null ? RetailPrice.fromJson(json['retailPrice']) : null;
//   }
//   int? finskyOfferType;
//   ListPrice? listPrice;
//   RetailPrice? retailPrice;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['finskyOfferType'] = finskyOfferType;
//     map['listPrice'] = listPrice;
//     if (retailPrice != null) {
//       map['retailPrice'] = retailPrice?.toJson();
//     }
//     return map;
//   }
//
// }
//
// /// amountInMicros : 1408580000
// /// currencyCode : "EGP"
//
// class RetailPrice {
//   RetailPrice({
//       this.amountInMicros,
//       this.currencyCode,});
//
//   RetailPrice.fromJson(dynamic json) {
//     amountInMicros = json['amountInMicros'];
//     currencyCode = json['currencyCode'];
//   }
//   int? amountInMicros;
//   String? currencyCode;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['amountInMicros'] = amountInMicros;
//     map['currencyCode'] = currencyCode;
//     return map;
//   }
//
// }
//
// /// amountInMicros : 1408580000
// /// currencyCode : "EGP"
//
// class ListPrice {
//   ListPrice({
//       this.amountInMicros,
//       this.currencyCode,});
//
//   ListPrice.fromJson(dynamic json) {
//     amountInMicros = json['amountInMicros'];
//     currencyCode = json['currencyCode'];
//   }
//   int? amountInMicros;
//   String? currencyCode;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['amountInMicros'] = amountInMicros;
//     map['currencyCode'] = currencyCode;
//     return map;
//   }
//
// }
//
// /// amount : 1408.58
// /// currencyCode : "EGP"
//
// class RetailPrice {
//   RetailPrice({
//       this.amount,
//       this.currencyCode,});
//
//   RetailPrice.fromJson(dynamic json) {
//     amount = json['amount'];
//     currencyCode = json['currencyCode'];
//   }
//   double? amount;
//   String? currencyCode;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['amount'] = amount;
//     map['currencyCode'] = currencyCode;
//     return map;
//   }
//
// }
//
// /// amount : 1408.58
// /// currencyCode : "EGP"
//
// class ListPrice {
//   ListPrice({
//       this.amount,
//       this.currencyCode,});
//
//   ListPrice.fromJson(dynamic json) {
//     amount = json['amount'];
//     currencyCode = json['currencyCode'];
//   }
//   double? amount;
//   String? currencyCode;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['amount'] = amount;
//     map['currencyCode'] = currencyCode;
//     return map;
//   }
//
// }
//
// /// title : "Hands-On Object-Oriented Programming with Kotlin"
// /// subtitle : "Build robust software with reusable code using OOP principles and design patterns in Kotlin"
// /// authors : ["Abid Khan","Igor Kucherenko"]
// /// publisher : "Packt Publishing Ltd"
// /// publishedDate : "2018-10-31"
// /// description : "Learn everything you need to know about object-oriented programming with the latest features of Kotlin 1.3 Key FeaturesA practical guide to understand objects and classes in KotlinLearn to write asynchronous, non-blocking codes with Kotlin coroutinesExplore Encapsulation, Inheritance, Polymorphism, and Abstraction in KotlinBook Description Kotlin is an object-oriented programming language. The book is based on the latest version of Kotlin. The book provides you with a thorough understanding of programming concepts, object-oriented programming techniques, and design patterns. It includes numerous examples, explanation of concepts and keynotes. Where possible, examples and programming exercises are included. The main purpose of the book is to provide a comprehensive coverage of Kotlin features such as classes, data classes, and inheritance. It also provides a good understanding of design pattern and how Kotlin syntax works with object-oriented techniques. You will also gain familiarity with syntax in this book by writing labeled for loop and when as an expression. An introduction to the advanced concepts such as sealed classes and package level functions and coroutines is provided and we will also learn how these concepts can make the software development easy. Supported libraries for serialization, regular expression and testing are also covered in this book. By the end of the book, you would have learnt building robust and maintainable software with object oriented design patterns in Kotlin. What you will learnGet an overview of the Kotlin programming languageDiscover Object-oriented programming techniques in Kotlin Understand Object-oriented design patternsUncover multithreading by Kotlin wayUnderstand about arrays and collectionsUnderstand the importance of object-oriented design patternsUnderstand about exception handling and testing in OOP with KotlinWho this book is for This book is for programmers and developers who wish to learn Object-oriented programming principles and apply them to build robust and scalable applications. Basic knowledge in Kotlin programming is assumed"
// /// industryIdentifiers : [{"type":"ISBN_13","identifier":"9781789619645"},{"type":"ISBN_10","identifier":"1789619645"}]
// /// readingModes : {"text":true,"image":true}
// /// pageCount : 370
// /// printType : "BOOK"
// /// categories : ["Computers"]
// /// maturityRating : "NOT_MATURE"
// /// allowAnonLogging : true
// /// contentVersion : "1.2.2.0.preview.3"
// /// panelizationSummary : {"containsEpubBubbles":false,"containsImageBubbles":false}
// /// imageLinks : {"smallThumbnail":"http://books.google.com/books/content?id=buh1DwAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api","thumbnail":"http://books.google.com/books/content?id=buh1DwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"}
// /// language : "en"
// /// previewLink : "http://books.google.com.eg/books?id=buh1DwAAQBAJ&printsec=frontcover&dq=programming&hl=&cd=1&source=gbs_api"
// /// infoLink : "https://play.google.com/store/books/details?id=buh1DwAAQBAJ&source=gbs_api"
// /// canonicalVolumeLink : "https://play.google.com/store/books/details?id=buh1DwAAQBAJ"
//
// class VolumeInfo {
//   VolumeInfo({
//       this.title,
//       this.subtitle,
//       this.authors,
//       this.publisher,
//       this.publishedDate,
//       this.description,
//       this.industryIdentifiers,
//       this.readingModes,
//       this.pageCount,
//       this.printType,
//       this.categories,
//       this.maturityRating,
//       this.allowAnonLogging,
//       this.contentVersion,
//       this.panelizationSummary,
//       this.imageLinks,
//       this.language,
//       this.previewLink,
//       this.infoLink,
//       this.canonicalVolumeLink,});
//
//   VolumeInfo.fromJson(dynamic json) {
//     title = json['title'];
//     subtitle = json['subtitle'];
//     authors = json['authors'] != null ? json['authors'].cast<String>() : [];
//     publisher = json['publisher'];
//     publishedDate = json['publishedDate'];
//     description = json['description'];
//     if (json['industryIdentifiers'] != null) {
//       industryIdentifiers = [];
//       json['industryIdentifiers'].forEach((v) {
//         industryIdentifiers?.add(IndustryIdentifiers.fromJson(v));
//       });
//     }
//     readingModes = json['readingModes'] != null ? ReadingModes.fromJson(json['readingModes']) : null;
//     pageCount = json['pageCount'];
//     printType = json['printType'];
//     categories = json['categories'] != null ? json['categories'].cast<String>() : [];
//     maturityRating = json['maturityRating'];
//     allowAnonLogging = json['allowAnonLogging'];
//     contentVersion = json['contentVersion'];
//     panelizationSummary = json['panelizationSummary'] != null ? PanelizationSummary.fromJson(json['panelizationSummary']) : null;
//     imageLinks = json['imageLinks'] != null ? ImageLinks.fromJson(json['imageLinks']) : null;
//     language = json['language'];
//     previewLink = json['previewLink'];
//     infoLink = json['infoLink'];
//     canonicalVolumeLink = json['canonicalVolumeLink'];
//   }
//   String? title;
//   String? subtitle;
//   List<String>? authors;
//   String? publisher;
//   String? publishedDate;
//   String? description;
//   List<IndustryIdentifiers>? industryIdentifiers;
//   ReadingModes? readingModes;
//   int? pageCount;
//   String? printType;
//   List<String>? categories;
//   String? maturityRating;
//   bool? allowAnonLogging;
//   String? contentVersion;
//   PanelizationSummary? panelizationSummary;
//   ImageLinks? imageLinks;
//   String? language;
//   String? previewLink;
//   String? infoLink;
//   String? canonicalVolumeLink;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['title'] = title;
//     map['subtitle'] = subtitle;
//     map['authors'] = authors;
//     map['publisher'] = publisher;
//     map['publishedDate'] = publishedDate;
//     map['description'] = description;
//     if (industryIdentifiers != null) {
//       map['industryIdentifiers'] = industryIdentifiers?.map((v) => v.toJson()).toList();
//     }
//     if (readingModes != null) {
//       map['readingModes'] = readingModes?.toJson();
//     }
//     map['pageCount'] = pageCount;
//     map['printType'] = printType;
//     map['categories'] = categories;
//     map['maturityRating'] = maturityRating;
//     map['allowAnonLogging'] = allowAnonLogging;
//     map['contentVersion'] = contentVersion;
//     if (panelizationSummary != null) {
//       map['panelizationSummary'] = panelizationSummary?.toJson();
//     }
//     if (imageLinks != null) {
//       map['imageLinks'] = imageLinks?.toJson();
//     }
//     map['language'] = language;
//     map['previewLink'] = previewLink;
//     map['infoLink'] = infoLink;
//     map['canonicalVolumeLink'] = canonicalVolumeLink;
//     return map;
//   }
//
// }
//
// /// smallThumbnail : "http://books.google.com/books/content?id=buh1DwAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api"
// /// thumbnail : "http://books.google.com/books/content?id=buh1DwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"
//
// class ImageLinks {
//   ImageLinks({
//       this.smallThumbnail,
//       this.thumbnail,});
//
//   ImageLinks.fromJson(dynamic json) {
//     smallThumbnail = json['smallThumbnail'];
//     thumbnail = json['thumbnail'];
//   }
//   String? smallThumbnail;
//   String? thumbnail;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['smallThumbnail'] = smallThumbnail;
//     map['thumbnail'] = thumbnail;
//     return map;
//   }
//
// }
//
// /// containsEpubBubbles : false
// /// containsImageBubbles : false
//
// class PanelizationSummary {
//   PanelizationSummary({
//       this.containsEpubBubbles,
//       this.containsImageBubbles,});
//
//   PanelizationSummary.fromJson(dynamic json) {
//     containsEpubBubbles = json['containsEpubBubbles'];
//     containsImageBubbles = json['containsImageBubbles'];
//   }
//   bool? containsEpubBubbles;
//   bool? containsImageBubbles;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['containsEpubBubbles'] = containsEpubBubbles;
//     map['containsImageBubbles'] = containsImageBubbles;
//     return map;
//   }
//
// }
//
// /// text : true
// /// image : true
//
// class ReadingModes {
//   ReadingModes({
//       this.text,
//       this.image,});
//
//   ReadingModes.fromJson(dynamic json) {
//     text = json['text'];
//     image = json['image'];
//   }
//   bool? text;
//   bool? image;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['text'] = text;
//     map['image'] = image;
//     return map;
//   }
//
// }
//
// /// type : "ISBN_13"
// /// identifier : "9781789619645"
//
// class IndustryIdentifiers {
//   IndustryIdentifiers({
//       this.type,
//       this.identifier,});
//
//   IndustryIdentifiers.fromJson(dynamic json) {
//     type = json['type'];
//     identifier = json['identifier'];
//   }
//   String? type;
//   String? identifier;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['type'] = type;
//     map['identifier'] = identifier;
//     return map;
//   }
//
// }