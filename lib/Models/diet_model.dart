import 'package:flutter/cupertino.dart';

class DietModel {
  final String name;
  final String descrition;
  final String How_it_works;
  final String weight_loss;
  final String other_benifits;
  final String Downsides;

  DietModel(
      {required this.name,
      required this.descrition,
      required this.How_it_works,
      required this.weight_loss,
      required this.other_benifits,
      required this.Downsides});
}

Map DietMap = {
  "Intermittent fasting": DietModel(
      name: "Intermittent fasting",
      descrition:
          "Intermittent fasting is a dietary strategy that cycles between periods of fasting and eating. Various forms exist, including the 16/8 method, which involves limiting your calorie intake to 8 hours per day, and the 5:2 method, which restricts your daily calorie intake to 500–600 calories twice per week",
      How_it_works:
          "How it works: Intermittent fasting restricts the time you’re allowed to eat, which is a simple way to reduce your calorie intake. This can lead to weight loss — unless you compensate by eating too much food during allowed eating periods.",
      weight_loss:
          "Weight loss: In a review of studies, intermittent fasting was shown to cause 3–8% weight loss over 3–24 weeks, which is a significantly greater percentage than other methods The same review showed that this way of eating may reduce waist circumference by 4–7%, which is a marker for harmful belly fat. Other studies found that intermittent fasting can increase fat burning while preserving muscle mass, which can improve metabolism ",
      other_benifits:
          "Other benefits: Intermittent fasting has been linked to anti-aging effects, increased insulin sensitivity, improved brain health, reduced inflammation, and many other benefits",
      Downsides:
          "Downsides: In general, intermittent fasting is safe for most healthy adults. That said, those sensitive to drops in their blood sugar levels, such as some people with diabetes, low weight, or an eating disorder, as well as pregnant or breastfeeding women, should talk to a health professional before starting intermittent fasting."),
  "Plant-based diets": DietModel(
      name: "Plant-based diets",
      descrition:
          "Plant-based diets may help you lose weight. Vegetarianism and veganism are the most popular versions, which restrict animal products for health, ethical, and environmental reasons.However, more flexible plant-based diets also exist, such as the flexitarian diet, which is a plant-based diet that allows eating animal products in moderation.",
      How_it_works:
          "How it works: There are many types of vegetarianism, but most involve eliminating all meat, poultry, and fish. Some vegetarians may likewise avoid eggs and dairy.The vegan diet takes it a step further by restricting all animal products, as well as animal-derived products like dairy, gelatin, honey, whey, casein, and albumin.There are no clear-cut rules for the flexitarian diet, as it’s a lifestyle change rather than a diet. It encourages eating mostly fruits, vegetables, legumes, and whole grains but allows for protein and animal products in moderation, making it a popular alternative.Many of the restricted food groups are high in calories, so limiting them may aid weight loss.",
      weight_loss:
          "Weight loss: Research shows that plant-based diets are effective for weight loss A review of 12 studies including 1,151 participants found that people on a plant-based diet lost an average of 4.4 pounds (2 kg) more than those who included animal products .Plus, those following a vegan diet lost an average of 5.5 pounds (2.5 kg) more than people not eating a plant-based diet Plant-based diets likely aid weight loss because they tend to be rich in fiber, which can help you stay fuller for longer, and low in high-calorie fat",
      other_benifits:
          "Other benefits: Plant-based diets have been linked to many other benefits, such as a reduced risk of chronic conditions like heart disease, certain cancers, and diabetes. They can also be more environmentally sustainable than meat-based diets ",
      Downsides:
          "Downsides: Though plant-based diets are healthy, they can restrict important nutrients that are typically found in animal products, such as iron, vitamin B12, vitamin D, calcium, zinc, and omega-3 fatty acids.A flexitarian approach or proper supplementation can help account for these nutrients."),
  "Low-carb diets": DietModel(
      name: "Low-carb diets",
      descrition:
          "Low-carb diets are among the most popular diets for weight loss. Examples include the Atkins diet, ketogenic (keto) diet, and low-carb, high-fat (LCHF) diet.Some varieties reduce carbs more drastically than others. For instance, very-low-carb diets like the keto diet restrict this macronutrient to under 10% of total calories, compared with 30% or less for other types",
      How_it_works:
          "How it works: Low-carb diets restrict your carb intake in favor of protein and fat.They’re typically higher in protein than low-fat diets, which is important, as protein can help curb your appetite, raise your metabolism, and conserve muscle mass  .In very-low-carb diets like keto, your body begins using fatty acids rather than carbs for energy by converting them into ketones. This process is called ketosis",
      weight_loss:
          "Weight loss: Many studies indicate that low-carb diets can aid weight loss and may be more effective than conventional low-fat diets.For example, a review of 53 studies including 68,128 participants found that low-carb diets resulted in significantly more weight loss than low-fat diets ",
      other_benifits:
          "Other benefits: Research suggests that low-carb diets may reduce risk factors for heart disease, including high cholesterol and blood pressure levels. They may also improve blood sugar and insulin levels in people with type 2 diabetes",
      Downsides:
          "Downsides: In some cases, a low-carb diet may raise LDL (bad) cholesterol levels. Very-low-carb diets can also be difficult to follow and cause digestive upset in some people .In very rare situations, following a very-low-carb diet may cause a condition known as ketoacidosis, a dangerous metabolic condition that can be fatal if left untreated"),
  "The paleo diet": DietModel(
      name: "The paleo diet",
      descrition:
          "The paleo diet advocates eating the same foods that your hunter-gatherer ancestors allegedly ate.It’s based on the theory that modern diseases are linked to the Western diet, as proponents believe that the human body hasn’t evolved to process legumes, grains, and dairy.",
      How_it_works:
          "How it works: The paleo diet advocates eating whole foods, fruits, vegetables, lean meats, nuts, and seeds. It restricts the consumption of processed foods, grains, sugar, and dairy, though some less restrictive versions allow for some dairy products like cheese.",
      weight_loss:
          "Weight loss: Numerous studies have shown that the paleo diet can aid weight loss and reduce harmful belly fat .For example, in one 3-week study, 14 healthy adults following a paleo diet lost an average of 5.1 pounds (2.3 kg) and reduced their waist circumference — a marker for belly fat — by an average of 0.6 inches (1.5 cm) .Research also suggests that the paleo diet may be more filling than popular diets like the Mediterranean diet and low-fat diets. This may be due to its high protein content ",
      other_benifits:
          "Other benefits: Following the paleo diet may reduce several heart disease risk factors, such as high blood pressure, cholesterol, and triglyceride levels ",
      Downsides:
          "Downsides: Though the paleo diet is healthy, it restricts several nutritious food groups, including legumes, whole grains, and dairy."),
  "Low-fat diets": DietModel(
      name: "Low-fat diets",
      descrition:
          "Like low-carb diets, low-fat diets have been popular for decades.In general, a low-fat diet involves restricting your fat intake to 30% of your daily calories.Some very- and ultra-low-fat diets aim to limit fat consumption to under 10% of calories",
      How_it_works:
          "How it works: Low-fat diets restrict fat intake because fat provides about twice the number of calories per gram, compared with the other two macronutrients — protein and carbs Ultra-low-fat diets contain fewer than 10% of calories from fat, with approximately 80% of calories coming from carbs and 10% from protein.Ultra-low-fat diets are mainly plant-based and limit meat and animal products.",
      weight_loss:
          "Weight loss: As low-fat diets restrict calorie intake, they can aid weight loss .An analysis of 33 studies including over 73,500 participants found that following a low-fat diet led to small but relevant changes in weight and waist circumference  However, while low-fat diets appear to be as effective as low-carb diets for weight loss in controlled situations, low-carb diets seem to be more effective day to day .Ultra-low-fat diets have been shown to be successful, especially among people with obesity. For example, an 8-week study in 56 participants found that eating a diet comprising 7–14% fat led to an average weight loss of 14.8 pounds (6.7 kg)",
      other_benifits:
          "Other benefits: Low-fat diets have been linked to a reduced risk of heart disease and stroke. They may also reduce inflammation and improve markers of diabetes",
      Downsides:
          "Downsides: Restricting fat too much can lead to health problems in the long term, as fat plays a key role in hormone production, nutrient absorption, and cell health. Moreover, very-low-fat diets have been linked to a higher risk of metabolic syndrome "),
  "The Mediterranean diet": DietModel(
      name: "The Mediterranean diet",
      descrition:
          "The Mediterranean diet is based on foods that people in countries like Italy and Greece used to eat.Though it was designed to lower heart disease risk, numerous studies indicate that it can also aid weight loss",
      How_it_works:
          "How it works: The Mediterranean diet advocates eating plenty of fruits, vegetables, nuts, seeds, legumes, tubers, whole grains, fish, seafood, and extra virgin olive oil.Foods such as poultry, eggs, and dairy products are to be eaten in moderation. Meanwhile, red meats are limited.Additionally, the Mediterranean diet restricts refined grains, trans fats, refined oils, processed meats, added sugar, and other highly processed foods.",
      weight_loss:
          "Weight loss: Though it’s not specifically a weight loss diet, many studies show that adopting a Mediterranean-style diet may aid weight loss .For example, an analysis of 19 studies found that people who combined the Mediterranean diet with exercise or calorie restriction lost an average of 8.8 pounds (4 kg) more than those on a control diet ",
      other_benifits:
          "Other benefits: The Mediterranean diet encourages eating plenty of antioxidant-rich foods, which may help combat inflammation and oxidative stress by neutralizing free radicals. It has been linked to reduced risks of heart disease and premature death",
      Downsides:
          "Downsides: As the Mediterranean diet is not strictly a weight loss diet, people may not lose weight following it unless they also consume fewer calories."),
  "WW (Weight Watchers)": DietModel(
      name: "WW (Weight Watchers)",
      descrition:
          "WW, formerly Weight Watchers, is one of the most popular weight loss programs worldwide.While it doesn’t restrict any food groups, people on a WW plan must eat within their set daily points to reach their ideal weight",
      How_it_works:
          "How it works: WW is a points-based system that assigns different foods and beverages a value, depending on their calorie, fat, and fiber contents.To reach your desired weight, you must stay within your daily point allowance.",
      weight_loss:
          "Weight loss: Many studies show that the WW program can help you lose weight.For example, a review of 45 studies found that people who followed a WW diet lost 2.6% more weight than people who received standard counseling What’s more, people who follow WW programs have been shown to be more successful at maintaining weight loss after several years, compared with those who follow other diets",
      other_benifits:
          "Other benefits: WW allows flexibility, making it easy to follow. This enables people with dietary restrictions, such as those with food allergies, to adhere to the plan.",
      Downsides:
          "Downsides: While it allows for flexibility, WW can be costly depending on the subscription plan. Also, it’s flexibility can be a downfall if dieters choose unhealthy foods."),
  "The DASH diet": DietModel(
      name: "The DASH diet",
      descrition:
          "Dietary Approaches to Stop Hypertension, or DASH diet, is an eating plan that is designed to help treat or prevent high blood pressure, which is clinically known as hypertension.It emphasizes eating plenty of fruits, vegetables, whole grains, and lean meats and is low in salt, red meat, added sugars, and fat.While the DASH diet is not a weight loss diet, many people report losing weight on it.",
      How_it_works:
          "How it works: The DASH diet recommends specific servings of different food groups. The number of servings you are allowed to eat depends on your daily calorie intake.For example, an average person on the DASH diet would eat about 5 servings of vegetables, 5 servings of fruit, 7 servings of healthy carbs like whole grains, 2 servings of low-fat dairy products, and 2 servings or fewer of lean meats per day.In addition, you’re allowed to eat nuts and seeds 2–3 times per week",
      weight_loss:
          "Studies show that the DASH diet can help you lose weight .For example, an analysis of 13 studies found that people on the DASH diet lost significantly more weight over 8–24 weeks than people on a control diet",
      other_benifits:
          "Other benefits: The DASH diet has been shown to reduce blood pressure levels and several heart disease risk factors. Also, it may help combat recurrent depressive symptoms and lower your risk of breast and colorectal cancer",
      Downsides:
          "Downsides: While the DASH diet may aid weight loss, there is mixed evidence on salt intake and blood pressure. In addition, eating too little salt has been linked to increased insulin resistance and an increased risk of death in people with heart failure"),
};
