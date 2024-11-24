class CalFuncs {
  static List<List<dynamic>> values = [
    ['A', 1],
    ['B', 2],
    ['C', 3],
    ['D', 4],
    ['E', 5],
    ['F', 8],
    ['G', 3],
    ['H', 5],
    ['I', 1],
    ['J', 1],
    ['K', 2],
    ['L', 3],
    ['M', 4],
    ['N', 5],
    ['O', 7],
    ['P', 8],
    ['Q', 1],
    ['R', 2],
    ['S', 3],
    ['T', 4],
    ['U', 6],
    ['V', 6],
    ['W', 6],
    ['X', 6],
    ['Y', 1],
    ['Z', 7],
  ];

  static Map<String, Map<String, String>> vadicData = {
    "1": {"Friend": "1,2,3,9", "Neutral": "5, 7, 6, 4", "Enemy": "4,8"},
    "2": {"Friend": "1,3,7", "Neutral": "5,6", "Enemy": "9,8,4"},
    "3": {"Friend": "1,2,3,7,9", "Neutral": "5,4,8", "Enemy": "6"},
    "4": {"Friend": "4,6,5,7", "Neutral": "1,3", "Enemy": "8,9"},
    "5": {"Friend": "1,3,4,6,7,8", "Neutral": "2,5,9", "Enemy": ""},
    "6": {"Friend": "4,5,8", "Neutral": "1,2,7", "Enemy": "3,9"},
    "7": {"Friend": "2,3,6,7,8,9", "Neutral": "1,4,5", "Enemy": ""},
    "8": {"Friend": "5,6,7", "Neutral": "3,5,8,9", "Enemy": "1,2,4"},
    "9": {"Friend": "1,3", "Neutral": "5,7,8", "Enemy": "2,6,8"},
  };

  static Map<String, Map<String, String>> lalKitabData = {
    "1": {"Friend": "3,2,9", "Neutral": "5", "Enemy": "6,8,4,7"},
    "2": {"Friend": "1,5", "Neutral": "8,6,9,3", "Enemy": "5,6,4,7"},
    "3": {"Friend": "1,2,9", "Neutral": "4,7,8", "Enemy": "5,6"},
    "4": {"Friend": "5,8,7", "Neutral": "3,2", "Enemy": "1,6,9"},
    "5": {"Friend": "1,6,4", "Neutral": "8,7,9,3", "Enemy": "2"},
    "6": {"Friend": "8,5,7", "Neutral": "9,3", "Enemy": ",1,2,4"},
    "7": {"Friend": "6,4", "Neutral": "3,8,5,1", "Enemy": "2,9"},
    "8": {"Friend": "5,6,4", "Neutral": "7,3", "Enemy": "1,9,2"},
    "9": {"Friend": "1,2,3", "Neutral": "6,8,4", "Enemy": "5,7"},
  };

  static List<Map<String, dynamic>> data = [
    {
      "index": "13",
      "description":
          "उच्च शिक्षा, स्व-निर्मित व्यक्ति, विद्वान व्यक्तित्व, ज्ञान और शिक्षा का सम्मान, बुद्धिमान, आध्यात्मिकता, साहसिक निर्णय शक्ति, नेतृत्व गुण, पिता और पुत्र में प्यार और स्नेह"
    },
    {
      "index": "31",
      "description":
          "उच्च शिक्षा, स्व-निर्मित व्यक्ति, विद्वान व्यक्तित्व, ज्ञान और शिक्षा का सम्मान, बुद्धिमान, आध्यात्मिकता, साहसिक निर्णय शक्ति, नेतृत्व गुण, पिता और पुत्र में प्यार और स्नेह"
    },
    {
      "index": "12",
      "description":
          "आकर्षक चेहरा, आकर्षक व्यक्तित्व, कर्ज की समस्या, स्वास्थ्य और पारिवारिक समस्याएं, सरकार से संबंधित कार्य संबंधी समस्याएं, बहुत सारे त्याग, समस्याएं और तनाव"
    },
    {
      "index": "21",
      "description":
          "आकर्षक चेहरा, आकर्षक व्यक्तित्व, कर्ज की समस्या, स्वास्थ्य और पारिवारिक समस्याएं, सरकार से संबंधित कार्य संबंधी समस्याएं, बहुत सारे त्याग, समस्याएं और तनाव"
    },
    {
      "index": "14",
      "description":
          "गंभीर ऋण मुद्दे , स्वास्थ्य समस्याएं और व्यक्तिगत शत्रु , पारिवारिक तनाव , सरकारी कामकाज में परेशानी , हानि की संभावना , सरकारी वित्तीय के लिए प्राथमिकता देनदारियों"
    },
    {
      "index": "41",
      "description":
          "गंभीर ऋण मुद्दे , स्वास्थ्य समस्याएं और व्यक्तिगत शत्रु , पारिवारिक तनाव , सरकारी कामकाज में परेशानी , हानि की संभावना , सरकारी वित्तीय के लिए प्राथमिकता देनदारियों"
    },
    {
      "index": "15",
      "description":
          "अच्छी प्रस्तुति कौशल और सफल समापन सौदे , एक आकर्षक और मोहित करने वाला , अंतिम उद्देश्य है कमाना , उन्हें प्रबंधित करने के लिए मजबूत मानसिक शक्ति पेशेवर ज़िंदगी , बिना किसी मानसिक परेशानी के कमाया जाने वाला पैसा अवरोध पैदा करना"
    },
    {
      "index": "51",
      "description":
          "अच्छी प्रस्तुति कौशल और सफल समापन सौदे , एक आकर्षक और मोहित करने वाला , अंतिम उद्देश्य है कमाना , उन्हें प्रबंधित करने के लिए मजबूत मानसिक शक्ति पेशेवर ज़िंदगी , बिना किसी मानसिक परेशानी के कमाया जाने वाला पैसा अवरोध पैदा करना"
    },
    {
      "index": "16",
      "description": "नौकरी और धन हानि की संभावना , रिश्ते की समस्याएँ"
    },
    {
      "index": "61",
      "description": "नौकरी और धन हानि की संभावना , रिश्ते की समस्याएँ"
    },
    {
      "index": "17",
      "description":
          "काफ़ी भाग्यशाली , लोकप्रिय और बहुत अच्छे अनुयायी होने के कारण , सरकारी नौकरी में , अंतर्ज्ञान और आध्यात्मिकता मजबूत हैं अंक , अशांत पारिवारिक जीवन का सामना करना पड़ेगा , एक से अधिक रिश्ते हो सकते हैं"
    },
    {
      "index": "71",
      "description":
          "काफ़ी भाग्यशाली , लोकप्रिय और बहुत अच्छे अनुयायी होने के कारण , सरकारी नौकरी में , अंतर्ज्ञान और आध्यात्मिकता मजबूत हैं अंक , अशांत पारिवारिक जीवन का सामना करना पड़ेगा , एक से अधिक रिश्ते हो सकते हैं"
    },
    {
      "index": "18",
      "description":
          "अपमान, बदनामी , आंतरिक संघर्ष और आगामी जीवन में खतरों की चेतावनी , काम में बाधाएं, सरकारी नौकरी छूट सकती है , जीवनसाथी को स्वास्थ्य समस्याएं , पारिवारिक कलह"
    },
    {
      "index": "81",
      "description":
          "अपमान, बदनामी , आंतरिक संघर्ष और आगामी जीवन में खतरों की चेतावनी , काम में बाधाएं, सरकारी नौकरी छूट सकती है , जीवनसाथी को स्वास्थ्य समस्याएं , पारिवारिक कलह"
    },
    {
      "index": "19",
      "description":
          "महान उपलब्धि के साथ उच्च शिक्षा , अद्भुत ऊर्जावान नेता , साहसी और आत्मविश्वासी , अनुशासित, जोखिम लेने में माहिर , स्वतंत्र रूप से काम करना पसंद"
    },
    {
      "index": "91",
      "description":
          "महान उपलब्धि के साथ उच्च शिक्षा , अद्भुत ऊर्जावान नेता , साहसी और आत्मविश्वासी , अनुशासित, जोखिम लेने में माहिर , स्वतंत्र रूप से काम करना पसंद"
    },
    {
      "index": "23",
      "description":
          "शिक्षा में विघ्न/बाधा , आक्रामक स्वभाव , शत्रुओं पर विजय , संतान से परेशानी"
    },
    {
      "index": "32",
      "description":
          "शिक्षा में विघ्न/बाधा , आक्रामक स्वभाव , शत्रुओं पर विजय , संतान से परेशानी"
    },
    {
      "index": "24",
      "description":
          "दुर्घटना संभावित , बुरी संगत में जा सकते हैं , परिवार में संघर्ष की समस्या , सरकार से संबंधित कार्यों में परेशानी , आंखों की समस्या और स्वास्थ्य संबंधी समस्याएं बीमारियों"
    },
    {
      "index": "42",
      "description":
          "दुर्घटना संभावित , बुरी संगत में जा सकते हैं , परिवार में संघर्ष की समस्या , सरकार से संबंधित कार्यों में परेशानी , आंखों की समस्या और स्वास्थ्य संबंधी समस्याएं बीमारियों"
    },
    {
      "index": "25",
      "description":
          "वित्त संबंधी प्रमुख मुद्दे , बुद्धिमान और तेज दिमाग , कड़ी मेहनत में निरंतर , शिक्षकों के लिए उच्च सम्मान , आध्यात्मिक दूत"
    },
    {
      "index": "52",
      "description":
          "वित्त संबंधी प्रमुख मुद्दे , बुद्धिमान और तेज दिमाग , कड़ी मेहनत में निरंतर , शिक्षकों के लिए उच्च सम्मान , आध्यात्मिक दूत"
    },
    {
      "index": "26",
      "description":
          "आकर्षक , प्यार और देखभाल , भावुक व्यक्ति , शिक्षा संबंधी समस्याएं , पारिवारिक शांति की कमी , घुटनों में दर्द , मूत्र संक्रमण और रक्त संबंधी समस्याएं"
    },
    {
      "index": "62",
      "description":
          "आकर्षक , प्यार और देखभाल , भावुक व्यक्ति , शिक्षा संबंधी समस्याएं , पारिवारिक शांति की कमी , घुटनों में दर्द , मूत्र संक्रमण और रक्त संबंधी समस्याएं"
    },
    {
      "index": "27",
      "description": "जोड़ों का दर्द , मूत्र संबंधी रोग , आर्थिक समस्या"
    },
    {
      "index": "72",
      "description": "जोड़ों का दर्द , मूत्र संबंधी रोग , आर्थिक समस्या"
    },
    {
      "index": "28",
      "description":
          "चिंता , उच्च मनोदशा परिवर्तन , अवसाद के मुद्दे , लत और बुरी आदतें , पारिवारिक कलह , दुर्घटना की संभावना , बहुत संघर्ष , श्रेष्ठता / हीन भावना"
    },
    {
      "index": "82",
      "description":
          "चिंता , उच्च मनोदशा परिवर्तन , अवसाद के मुद्दे , लत और बुरी आदतें , पारिवारिक कलह , दुर्घटना की संभावना , बहुत संघर्ष , श्रेष्ठता / हीन भावना"
    },
    {
      "index": "29",
      "description": "आर्थिक स्थिति अच्छी रहेगी  , स्वयं निर्मित व्यक्ति"
    },
    {
      "index": "92",
      "description": "आर्थिक स्थिति अच्छी रहेगी  , स्वयं निर्मित व्यक्ति"
    },
    {
      "index": "34",
      "description":
          "बच्चे माता-पिता के साथ नहीं रह सकते , वित्तीय समस्याएँ उत्पन्न हो सकती हैं"
    },
    {
      "index": "43",
      "description":
          "बच्चे माता-पिता के साथ नहीं रह सकते , वित्तीय समस्याएँ उत्पन्न हो सकती हैं"
    },
    {
      "index": "35",
      "description":
          "तेज दिमाग रखें , वित्त का अच्छा प्रवाह और पारिवारिक आय , घर से दूर सफलता , आर्थिक स्थिति अच्छी लेकिन तरलता संकट का सामना करना पड़ेगा , अपनी संपत्ति का आनंद नहीं ले पाएंगे"
    },
    {
      "index": "53",
      "description":
          "तेज दिमाग रखें , वित्त का अच्छा प्रवाह और पारिवारिक आय , घर से दूर सफलता , आर्थिक स्थिति अच्छी लेकिन तरलता संकट का सामना करना पड़ेगा , अपनी संपत्ति का आनंद नहीं ले पाएंगे"
    },
    {
      "index": "36",
      "description":
          "अच्छी शिक्षा , सर्वांगीण प्रगति , विवाह के लिए इच्छुक नहीं , धार्मिक या आध्यात्मिक रुझान , पिता और पुत्र के बीच अच्छे संबंध नहीं , अपने स्वयं के नियमों का निर्माता"
    },
    {
      "index": "63",
      "description":
          "अच्छी शिक्षा , सर्वांगीण प्रगति , विवाह के लिए इच्छुक नहीं , धार्मिक या आध्यात्मिक रुझान , पिता और पुत्र के बीच अच्छे संबंध नहीं , अपने स्वयं के नियमों का निर्माता"
    },
    {
      "index": "37",
      "description": "वित्तीय लाभ और सहयोग , शीर्ष स्थान तक पहुँच सकते हैं"
    },
    {
      "index": "73",
      "description": "वित्तीय लाभ और सहयोग , शीर्ष स्थान तक पहुँच सकते हैं"
    },
    {
      "index": "38",
      "description":
          "जीवन में संघर्ष , पारिवारिक कलह रहेगी , उपलब्धि हासिल होगी लेकिन बहुत संघर्ष के बाद , गलतफहमी नुकसान का कारण बनेगी"
    },
    {
      "index": "83",
      "description":
          "जीवन में संघर्ष , पारिवारिक कलह रहेगी , उपलब्धि हासिल होगी लेकिन बहुत संघर्ष के बाद , गलतफहमी नुकसान का कारण बनेगी"
    },
    {
      "index": "39",
      "description":
          "कड़ी मेहनत लेकिन परिणाम संतोषजनक नहीं , पारिवारिक विवाद और गलतफहमी , बुद्धिमान , डॉक्टरों, सर्जनों और इंजीनियरों के लिए उपयुक्त"
    },
    {
      "index": "93",
      "description":
          "कड़ी मेहनत लेकिन परिणाम संतोषजनक नहीं , पारिवारिक विवाद और गलतफहमी , बुद्धिमान , डॉक्टरों, सर्जनों और इंजीनियरों के लिए उपयुक्त"
    },
    {
      "index": "45",
      "description":
          "अस्पताल में भर्ती होना पड़ सकता है, कई चिकित्सीय समस्याएं, मुकदमेबाजी की समस्याएं, कानूनी समस्याएं होने की संभावना और यहां तक ​​कि जेल की सजा भी हो सकती है, बंधन योग हो सकता है, बुद्धिमान और स्मार्ट, नुकसान और अतिरिक्त तनाव, चिकित्सा समस्याएं"
    },
    {
      "index": "54",
      "description":
          "अस्पताल में भर्ती होना पड़ सकता है, कई चिकित्सीय समस्याएं, मुकदमेबाजी की समस्याएं, कानूनी समस्याएं होने की संभावना और यहां तक ​​कि जेल की सजा भी हो सकती है, बंधन योग हो सकता है, बुद्धिमान और स्मार्ट, नुकसान और अतिरिक्त तनाव, चिकित्सा समस्याएं"
    },
    {
      "index": "46",
      "description":
          "आपराधिक एवं जासूसी प्रवृत्ति , बदला लेने की प्रवृत्ति , त्वचा रोग की समस्या हो सकती है , बुरी संगति या लत में पड़ सकते हैं"
    },
    {
      "index": "64",
      "description":
          "आपराधिक एवं जासूसी प्रवृत्ति , बदला लेने की प्रवृत्ति , त्वचा रोग की समस्या हो सकती है , बुरी संगति या लत में पड़ सकते हैं"
    },
    {
      "index": "47",
      "description": "एक अच्छा सेवा प्रदाता हो सकता है ,दृढ़ निश्चय"
    },
    {
      "index": "74",
      "description": "एक अच्छा सेवा प्रदाता हो सकता है ,दृढ़ निश्चय"
    },
    {
      "index": "48",
      "description":
          "भाग्य में रुकावटें , दुर्घटनाओं की आशंका , पारिवारिक जीवन में अशांति , मूड में भारी बदलाव , लत और बुरी आदतें"
    },
    {
      "index": "84",
      "description":
          "भाग्य में रुकावटें , दुर्घटनाओं की आशंका , पारिवारिक जीवन में अशांति , मूड में भारी बदलाव , लत और बुरी आदतें"
    },
    {
      "index": "49",
      "description":
          "जोखिम लेने वाला , तनाव में , लाभ/पैसा कमाने के लिए कड़ी मेहनत करनी पड़ती है , अस्पताल में भर्ती होने और बड़ी सर्जरी की संभावना , मुकदमेबाजी की संभावना"
    },
    {
      "index": "94",
      "description":
          "जोखिम लेने वाला , तनाव में , लाभ/पैसा कमाने के लिए कड़ी मेहनत करनी पड़ती है , अस्पताल में भर्ती होने और बड़ी सर्जरी की संभावना , मुकदमेबाजी की संभावना"
    },
    {
      "index": "56",
      "description":
          "शिक्षित , कुछ बाधाओं के साथ शिक्षा में रुकावट , पारिवारिक अशांति , प्रेम प्रसंग में विफलता , ऋण पर लिए गए धन की हानि"
    },
    {
      "index": "65",
      "description":
          "शिक्षित , कुछ बाधाओं के साथ शिक्षा में रुकावट , पारिवारिक अशांति , प्रेम प्रसंग में विफलता , ऋण पर लिए गए धन की हानि"
    },
    {
      "index": "57",
      "description":
          "अच्छा संचार कौशल और एक लेखक या वक्ता हो सकता है , बुद्धिमान और अनुसंधान दायर किया जाएगा , विचारों और भावनाओं को व्यक्त कर सकता है , एक अच्छा सलाहकार हो सकता है"
    },
    {
      "index": "75",
      "description":
          "अच्छा संचार कौशल और एक लेखक या वक्ता हो सकता है , बुद्धिमान और अनुसंधान दायर किया जाएगा , विचारों और भावनाओं को व्यक्त कर सकता है , एक अच्छा सलाहकार हो सकता है"
    },
    {
      "index": "58",
      "description": "विज्ञान पृष्ठभूमि के लिए अच्छा,अच्छे डॉक्टर बन सकते हैं"
    },
    {
      "index": "85",
      "description": "विज्ञान पृष्ठभूमि के लिए अच्छा,अच्छे डॉक्टर बन सकते हैं"
    },
    {
      "index": "59",
      "description":
          "बुद्धिमान , व्यावसायिक दिमाग , व्यावसायिक कौशल , उच्च शिक्षा , कुंद व्यक्ति, डॉक्टर , इंजीनियर या सर्जन हो सकता है"
    },
    {
      "index": "95",
      "description":
          "बुद्धिमान , व्यावसायिक दिमाग , व्यावसायिक कौशल , उच्च शिक्षा , कुंद व्यक्ति, डॉक्टर , इंजीनियर या सर्जन हो सकता है"
    },
    {
      "index": "67",
      "description":
          "प्रेम विवाह / प्रेम संबंध , एकाधिक प्रेम संबंध / विवाह , भाग्यशाली , सौंदर्य और विलासिता , कला और संगीत के प्रति नैतिक झुकाव"
    },
    {
      "index": "76",
      "description":
          "प्रेम विवाह / प्रेम संबंध , एकाधिक प्रेम संबंध / विवाह , भाग्यशाली , सौंदर्य और विलासिता , कला और संगीत के प्रति नैतिक झुकाव"
    },
    {
      "index": "68",
      "description": "हानि और लाभ दोनों , कम सफलता , आर्थिक स्थिति अच्छी नहीं"
    },
    {
      "index": "86",
      "description": "हानि और लाभ दोनों , कम सफलता , आर्थिक स्थिति अच्छी नहीं"
    },
    {
      "index": "69",
      "description": "प्रेम विवाह , एकाधिक विवाह की संभावना , मांगलिक दोष"
    },
    {
      "index": "96",
      "description": "प्रेम विवाह , एकाधिक विवाह की संभावना , मांगलिक दोष"
    },
    {
      "index": "78",
      "description":
          "निराशावादी , दुर्भाग्य और बाधाओं का सामना करना पड़ सकता है , अवसाद ग्रस्त हो सकता है , अशांत और परेशानी भरा रिश्ता हो सकता है , बुरी आदतें या लत लग सकती है"
    },
    {
      "index": "87",
      "description":
          "निराशावादी , दुर्भाग्य और बाधाओं का सामना करना पड़ सकता है , अवसाद ग्रस्त हो सकता है , अशांत और परेशानी भरा रिश्ता हो सकता है , बुरी आदतें या लत लग सकती है"
    },
    {
      "index": "79",
      "description":
          "रक्त संबंधी समस्या , किडनी की समस्या, जोड़ों का दर्द , करियर में उतार-चढ़ाव की समस्या हो सकती है"
    },
    {
      "index": "97",
      "description":
          "रक्त संबंधी समस्या , किडनी की समस्या, जोड़ों का दर्द , करियर में उतार-चढ़ाव की समस्या हो सकती है"
    },
    {
      "index": "89",
      "description":
          "संघर्षों से भरा जीवन , असाध्य रोग या गंभीर स्वास्थ्य समस्याओं से पीड़ित हो सकते हैं , जीवन को खतरा हो सकता है"
    },
    {
      "index": "98",
      "description":
          "संघर्षों से भरा जीवन , असाध्य रोग या गंभीर स्वास्थ्य समस्याओं से पीड़ित हो सकते हैं , जीवन को खतरा हो सकता है"
    },
    {
      "index": "44",
      "description":
          "मुकदमेबाजी की संभावना , ग़लत समझे जाने की संभावना , प्रकृति पर हावी होना , राजनीति एवं सशस्त्र बलों में सफलता"
    }
  ];

  static String getPhoneData(String index) {
    for (Map<String, dynamic> map in data) {
      if (map["index"] == index) {
        return map["description"];
      }
    }
    return "Not Found";
  }

  static String getVadicData(String planet, String value) {
    Map<String, String>? planetData = vadicData[planet];
    String? friend = planetData?["Friend"];
    String? neutral = planetData?["Neutral"];
    String? enemy = planetData?["Enemy"];
    if (friend!.contains(value)) {
      return "Friend";
    } else if (neutral!.contains(value)) {
      return "Neutral";
    } else if (enemy!.contains(value)) {
      return "Enemy";
    }
    return "Value Not Found...";
  }

  static String getLalKitabData(String planet, String value) {
    Map<String, String>? planetData = vadicData[planet];
    String? friend = planetData?["Friend"];
    String? neutral = planetData?["Neutral"];
    String? enemy = planetData?["Enemy"];
    if (friend!.contains(value)) {
      return "Friend";
    } else if (neutral!.contains(value)) {
      return "Neutral";
    } else if (enemy!.contains(value)) {
      return "Enemy";
    }
    return "Value Not Found...";
  }

  static int sumOfText(String text) {
    int sum = 0;
    for (int i = 0; i < text.length; i++) {
      String char = text[i].toUpperCase();
      for (var entry in values) {
        if (entry[0] == char) {
          sum += entry[1] as int;
          break;
        }
      }
    }
    return sum;
  }

  static int sumOfDigits(num number) {
    final String numString = number.toString();
    final digits = numString.split('').map(int.parse);
    final sum = digits.fold<int>(0, (total, digit) => total + digit);
    return sum;
  }
}
