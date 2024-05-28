import 'package:get/get.dart';


class Languages extends Translations{
 
 Map<String, Map<String, String>> get keys => {
  'en_US': {
    'hello': 'Hello ',
    'good_morning': 'Good Morning',
    
    
  },
  'hi_IN': {
    'hello': 'नमस्ते',
    'good_morning': 'सुप्रभात',
    
  },
 };
}