import 'package:flutter/material.dart';
color(var res){
  if(res < 17 && res >= 0){return Colors.yellow.shade400;}
 else if(res >= 17 && res < 18.5){return Colors.blue;}
  else if(res >= 18.5 && res < 25){return Colors.green.shade700;}
  else if(res >= 25 && res < 40){return Colors.orange.shade600;}
  else{return Colors.red.shade900;}
}
String? BMIres(var res){
  if(res < 16){
    return "Severe Thinness";
  }
  else if(res >= 16 && res < 17){return "Moderate Thinness";}
  else if(res >= 17 && res < 18.5){ return "Mild Thinness";}
  else if(res >= 18.5 && res < 25){return "Normal";}
  else if(res >= 25 && res < 30){return "Overweight";}
  else if(res >= 30 && res < 35){return "Obese Class I";}
  else if(res >= 35 && res < 40){return "Obese Class II";}
  else{return "Obese Class III";}
}
String? healthy(var res){
  if(res < 17){return "UnderWeight";}
 else if(res >= 17 && res < 18.5){return "Healthy";}
  else if(res >= 18.5 && res < 25){return "OverWeight";}
  else if(res >= 25 && res < 40){return "Obese";}
  else{return "Extremely Obese";}
}
String? meaning(String categ){
  switch(categ){
    case "UnderWeight":
      return "\nWhile we always talk about being overweight as unhealthy and the health risks associated with it, we hardly talk about being underweight as equally harmful and needing to be taken care of. A bmi calculator can not only help you find whether you are overweight but also if you are underweight. If your body mass index is lower than 18.5 when you are above the age of 20 years then you are underweight. The risks of being underweight are always neglected but here are some of those risks which you need to consider –\n\n"
          "=-> Being underweight can be related to malnutrition, deficiencies of vitamins in the body, and also anaemia which is lower haemoglobin levels in the body. All these are life-threatening and you need to take care of the same to be fit. Being underweight cannot be considered fit.\n\n"
          "=-> Underweight people often develop osteoporosis which is a disease of the bones where they become weak to the context breaking down easily.\n\n"
          "=-> When your body doesn’t have the right nutrition and vitamins, the immunity is bound to go down, isn’t it? So, being underweight makes you prone to diseases as your immunity guard has been down.\n\n"
          "=-> If women are underweight, they can develop hormonal issues which can lead to difficulty in conceiving and even result in miscarriages.\n\n"
          "=-> If kids and teenagers are underweight, they can have developmental issues too.\n\n"
          "=-> Since there is a myth around the world that to be fit you need to be slim and your weight must have to be on the lower side. However, the fact has never been the weight, it is your body mass which needs to be right.";
          break;
      case "OverWeight" :
      return "\nThe risks associated with being overweight are pretty common but there is a lot more to it. Some of the common risks\n\n"
          "=-> High blood pressure and degrading heart health\n\n"
          "=-> Prone to getting type II diabetes\n\n"
          "=-> Risk of having a heart attack and stroke.";
      break;
    case ("Obese" || "Extremely Obese") :
      return "\nObesity increases the levels of LDL cholesterol, which is considered to be the bad one in the blood vessels and lowers the level of HDL cholesterol which is considered to be the good one. This increases the chances of coronary heart diseases.\n\n"
          "=-> While the above-mentioned risks are pretty common and people talk about them but only a handful of them do something to treat these issues. There are other risks as well which are not much spoken about but are related to being overweight.\n\n"
          "=-> If you are feeling fatigued, or even having sleep disorders, it can be related to your body mass index and it may be a sign of being overweight.\n\n"
          "=-> Gallbladder issues can be also related to being overweight, surprising right? However, it can be worse, gallbladder cancers, breast cancers, endometriosis, and PCOS/PCOD are just a few of many life-threatening diseases that are linked to being overweight.\n\n"
          "=-> However, the main shocker can be your mental health being connected to your weight. Yes, if you are overweight, getting clinical depression, and anxiety issues may not be rare.";
      break;
    default :
      return "Maintain Your Healthy Condition ";
  }
}
