
import 'package:flutter/material.dart';

void main() {
  runApp(const MahamiApp());
}

const purple = Color(0xFF6A1B9A);
const mauve = Color(0xFF9C27B0);
const bg = Color(0xFFF8F5FA);

class MahamiApp extends StatelessWidget {
  const MahamiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'مهامي',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: purple,
        scaffoldBackgroundColor: bg,
        fontFamily: 'Arial',
      ),
      home: const MahamiHome(),
    );
  }
}

class Question {
  final String text;
  final List<String> options;
  final int answer;

  const Question(this.text, this.options, this.answer);
}

class Lesson {
  final String subject;
  final String title;
  final String homework;
  final List<Question> questions;

  Lesson({
    required this.subject,
    required this.title,
    required this.homework,
    required this.questions,
  });
}

class StudyTask {
  String title;
  String subject;
  bool completed;

  StudyTask(this.title, this.subject, {this.completed = false});
}

final List<Lesson> lessons = [
  Lesson(
    subject: 'الرياضيات',
    title: 'خصائص الأعداد الحقيقية',
    homework: 'أجيبي عن الأسئلة التالية:\n'
        '1. ما المقصود بالأعداد الحقيقية؟\n'
        '2. اكتبي مثالاً على عدد نسبي.\n'
        '3. ما الخاصية المستخدمة في: 3 + 5 = 5 + 3؟\n'
        '4. احسبي: 4 × (2 + 3).\n'
        '5. اذكري الفرق بين العدد النسبي وغير النسبي.',
    questions: [
      Question('أي مما يلي عدد نسبي؟', ['√2', 'π', '3/4', '√5'], 2),
      Question('ناتج 5 + 7 يساوي:', ['10', '11', '12', '13'], 2),
      Question('الخاصية في 4 + 6 = 6 + 4 هي:',
          ['التجميع', 'الإبدال', 'التوزيع', 'المحايد'], 1),
    ],
  ),
  Lesson(
    subject: 'الرياضيات',
    title: 'العلاقات والدوال',
    homework: 'أجيبي عن الأسئلة التالية:\n'
        '1. عرّفي العلاقة الرياضية.\n'
        '2. ما المقصود بالدالة؟\n'
        '3. ما الفرق بين المجال والمدى؟\n'
        '4. هل العلاقة {(1,2),(2,3),(3,4)} دالة؟ ولماذا؟\n'
        '5. أعطي مثالاً على علاقة ليست دالة.',
    questions: [
      Question('الدالة هي علاقة تربط كل عنصر من المجال بـ:',
          ['عنصر واحد فقط', 'عنصرين دائماً', 'لا شيء', 'ثلاثة عناصر'], 0),
      Question('مجموعة المدخلات تسمى:',
          ['المدى', 'المجال', 'الناتج', 'المتغير'], 1),
      Question('أي علاقة مما يلي تمثل دالة؟',
          ['1→2 و1→3', '2→4 و3→4', '1→2 و1→5', '2→3 و2→6'], 1),
    ],
  ),
  Lesson(
    subject: 'الكيمياء',
    title: 'الضوء وطاقة الكم',
    homework: 'أجيبي عن الأسئلة التالية:\n'
        '1. ما المقصود بالكم؟\n'
        '2. ما العلاقة بين التردد والطاقة؟\n'
        '3. ما المقصود بالطول الموجي؟\n'
        '4. اذكري خصائص الموجات الضوئية.\n'
        '5. ما المقصود بالفوتون؟',
    questions: [
      Question('العالم الذي اقترح نظرية الكم هو:',
          ['نيوتن', 'ماكس بلانك', 'دالتون', 'رذرفورد'], 1),
      Question('تزداد طاقة الإشعاع بزيادة:',
          ['الطول الموجي', 'التردد', 'الكتلة', 'الحجم'], 1),
      Question('كمية الطاقة المحددة تسمى:',
          ['فوتون', 'بروتون', 'نيوترون', 'إلكترون'], 0),
    ],
  ),
  Lesson(
    subject: 'الكيمياء',
    title: 'نظرية الكم والذرة',
    homework: 'أجيبي عن الأسئلة التالية:\n'
        '1. ما المقصود بالنموذج الميكانيكي الكمي؟\n'
        '2. عرّفي الأوربيتال.\n'
        '3. ما أعداد الكم؟\n'
        '4. ما المقصود بمستوى الطاقة؟\n'
        '5. ما الفرق بين المدار والأوربيتال؟',
    questions: [
      Question('المنطقة التي يحتمل وجود الإلكترون فيها تسمى:',
          ['النواة', 'الأوربيتال', 'البروتون', 'الفوتون'], 1),
      Question('عدد الكم الرئيسي يحدد:',
          ['مستوى الطاقة', 'لون العنصر', 'كتلة الذرة', 'عدد النيوترونات'], 0),
      Question('الإلكترونات توجد حول:',
          ['النواة', 'البروتون فقط', 'النيوترون', 'الفوتون'], 0),
    ],
  ),
  Lesson(
    subject: 'الأحياء',
    title: 'خصائص شوكيات الجلد',
    homework: 'أجيبي عن الأسئلة التالية:\n'
        '1. لماذا سميت شوكيات الجلد بهذا الاسم؟\n'
        '2. ما أهم خصائصها؟\n'
        '3. ما وظيفة الجهاز الوعائي المائي؟\n'
        '4. كيف تتحرك شوكيات الجلد؟\n'
        '5. اذكري مثالين عليها.',
    questions: [
      Question('تعيش شوكيات الجلد في:',
          ['الماء العذب', 'البيئة البحرية', 'اليابسة', 'الهواء'], 1),
      Question('من أمثلة شوكيات الجلد:',
          ['نجم البحر', 'دودة الأرض', 'الجراد', 'الإسفنج'], 0),
      Question('تتحرك شوكيات الجلد بواسطة:',
          ['الأجنحة', 'الأقدام الأنبوبية', 'الزعانف', 'الأرجل المفصلية'], 1),
    ],
  ),
  Lesson(
    subject: 'الأحياء',
    title: 'اللافقاريات الحبلية',
    homework: 'أجيبي عن الأسئلة التالية:\n'
        '1. ما المقصود باللافقاريات الحبلية؟\n'
        '2. ما الحبل الظهري؟\n'
        '3. ما وظيفة الشقوق البلعومية؟\n'
        '4. اذكري مثالاً على اللافقاريات الحبلية.\n'
        '5. ما خصائص الكيسيات؟',
    questions: [
      Question('من أمثلة اللافقاريات الحبلية:',
          ['السهيم', 'الأسد', 'السمكة', 'العصفور'], 0),
      Question('الحبل الظهري تركيب:',
          ['داعم', 'هضمي', 'تنفسي', 'إخراجي'], 0),
      Question('اللافقاريات الحبلية تنتمي إلى:',
          ['الحبليات', 'المفصليات', 'الرخويات', 'الديدان'], 0),
    ],
  ),
  Lesson(
    subject: 'التقنية الرقمية',
    title: 'تمثيل البيانات',
    homework: 'أجيبي عن الأسئلة التالية:\n'
        '1. ما المقصود بالنظام الثنائي؟\n'
        '2. ما الفرق بين النظام الثنائي والعشري؟\n'
        '3. ما المقصود بتمثيل الصور الرقمية؟\n'
        '4. ما وظيفة البوابات المنطقية؟\n'
        '5. ما المقصود بالترانزستور؟\n'
        '6. ما الدارات المتكاملة؟',
    questions: [
      Question('ما الأرقام المستخدمة في النظام الثنائي؟',
          ['0 و 1', '1 و 2', '0 إلى 9', '1 إلى 9'], 0),
      Question('كم عدد رموز النظام العشري؟',
          ['2', '8', '10', '16'], 2),
      Question('ما الوحدة الأساسية لتمثيل الصورة الرقمية؟',
          ['البايت', 'البكسل', 'الميجابايت', 'المعالج'], 1),
      Question('أي بوابة منطقية تعطي ناتج 1 إذا كان أحد المدخلين 1؟',
          ['AND', 'OR', 'NOT', 'NAND'], 1),
      Question('ما وظيفة الترانزستور؟',
          ['تخزين الملفات فقط', 'تضخيم الإشارات أو العمل كمفتاح إلكتروني',
            'عرض الصور', 'طباعة المستندات'], 1),
    ],
  ),
  Lesson(
    subject: 'التقنية الرقمية',
    title: 'بنية جهاز الحاسب',
    homework: 'أجيبي عن الأسئلة التالية:\n'
        '1. ما المقصود بدورة الجلب والتنفيذ؟\n'
        '2. ما وظيفة وحدة المعالجة المركزية؟\n'
        '3. ما المقصود بالذاكرة الرئيسة؟\n'
        '4. ما الفرق بين RAM و ROM؟\n'
        '5. اذكري مثالين على وحدات التخزين.\n'
        '6. ما وظيفة وحدة التحكم؟',
    questions: [
      Question('ما الجزء المسؤول عن تنفيذ التعليمات ومعالجتها؟',
          ['الشاشة', 'وحدة المعالجة المركزية', 'لوحة المفاتيح', 'الطابعة'], 1),
      Question('ما أول مرحلة في دورة الجلب والتنفيذ؟',
          ['التخزين', 'الجلب', 'الطباعة', 'الإدخال'], 1),
      Question('أي ذاكرة تفقد محتوياتها عند إيقاف تشغيل الجهاز؟',
          ['ROM', 'RAM', 'القرص الصلب', 'ذاكرة الفلاش'], 1),
      Question('أي مما يلي يعد وحدة تخزين؟',
          ['المعالج', 'ذاكرة USB', 'الشاشة', 'الفأرة'], 1),
      Question('ما وظيفة وحدة التحكم؟',
          ['تنظيم تنفيذ التعليمات', 'عرض الصور',
            'تخزين الملفات بشكل دائم', 'تشغيل الصوت فقط'], 0),
    ],
  ),
];

class MahamiHome extends StatefulWidget {
  const MahamiHome({super.key});

  @override
  State<MahamiHome> createState() => _MahamiHomeState();
}

class _MahamiHomeState extends State<MahamiHome> {
  int page = 0;
  int points = 0;

  final Set<String> finishedHomework = {};
  final Set<String> finishedTests = {};
  final Map<String, int> scores = {};
  final List<StudyTask> extraTasks = [];

  int get totalTasks => lessons.length * 2 + extraTasks.length;

  int get completedTasks =>
      finishedHomework.length +
      finishedTests.length +
      extraTasks.where((t) => t.completed).length;

  void completeHomework(Lesson lesson) {
    if (finishedHomework.contains(lesson.title)) return;

    setState(() {
      finishedHomework.add(lesson.title);
      points += 10;
    });
  }

  void completeTest(Lesson lesson, int score) {
    if (finishedTests.contains(lesson.title)) return;

    setState(() {
      finishedTests.add(lesson.title);
      scores[lesson.title] = score;
      points += score * 5;
    });
  }

  @override
  Widget build(BuildContext context) {
    final pages = [
      dashboard(),
      homeworkPage(),
      testsPage(),
      achievementsPage(),
      const StudyChatPage(),
    ];

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: purple,
          foregroundColor: Colors.white,
          title: const Text(
            'مهامي 💜',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: pages[page],
        bottomNavigationBar: NavigationBar(
          selectedIndex: page,
          onDestinationSelected: (i) => setState(() => page = i),
          backgroundColor: Colors.white,
          indicatorColor: mauve.withOpacity(0.15),
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.home_outlined),
              label: 'الرئيسية',
            ),
            NavigationDestination(
              icon: Icon(Icons.menu_book_outlined),
              label: 'الواجبات',
            ),
            NavigationDestination(
              icon: Icon(Icons.quiz_outlined),
              label: 'الاختبارات',
            ),
            NavigationDestination(
              icon: Icon(Icons.emoji_events_outlined),
              label: 'إنجازاتي',
            ),
            NavigationDestination(
              icon: Icon(Icons.smart_toy_outlined),
              label: 'رفيقة دراستي',
            ),
          ],
        ),
      ),
    );
  }

  Widget dashboard() {
    double progress = totalTasks == 0 ? 0 : completedTasks / totalTasks;

    return ListView(
      padding: const EdgeInsets.all(18),
      children: [
        Container(
          padding: const EdgeInsets.all(22),
          decoration: BoxDecoration(
            gradient: const LinearGradient(colors: [purple, mauve]),
            borderRadius: BorderRadius.circular(22),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'أهلاً بك في مهامي ✨',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'خطوة صغيرة كل يوم تصنع فرقاً كبيراً.',
                style: TextStyle(color: Colors.white70),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  const Icon(Icons.star, color: Colors.amber, size: 30),
                  const SizedBox(width: 8),
                  Text(
                    '$points نقطة',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 22),
        const Text(
          'إنجازاتك الدراسية',
          style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 12),
        Card(
          child: Padding(
            padding: const EdgeInsets.all(18),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('نسبة الإنجاز'),
                    Text('${(progress * 100).round()}%'),
                  ],
                ),
                const SizedBox(height: 12),
                LinearProgressIndicator(
                  value: progress,
                  minHeight: 10,
                  borderRadius: BorderRadius.circular(10),
                  color: mauve,
                  backgroundColor: mauve.withOpacity(0.12),
                ),
                const SizedBox(height: 12),
                Text('$completedTasks من $totalTasks مهمة مكتملة'),
              ],
            ),
          ),
        ),
        const SizedBox(height: 20),
        const Text(
          'موادي الدراسية',
          style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 12),
        subjectCard('الرياضيات', Icons.calculate_outlined, 'خصائص الأعداد والدوال'),
        subjectCard('الكيمياء', Icons.science_outlined, 'الضوء والذرة'),
        subjectCard('الأحياء', Icons.biotech_outlined, 'شوكيات الجلد والحبليات'),
        subjectCard(
          'التقنية الرقمية',
          Icons.computer_outlined,
          'تمثيل البيانات وبنية جهاز الحاسب',
        ),
        const SizedBox(height: 20),
        const Text(
          'ابدئي إنجازك اليوم 💜',
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        FilledButton.icon(
          onPressed: () => setState(() => page = 1),
          icon: const Icon(Icons.menu_book),
          label: const Text('عرض واجباتي'),
          style: FilledButton.styleFrom(backgroundColor: purple),
        ),
      ],
    );
  }

  Widget subjectCard(String name, IconData icon, String subtitle) {
    final subjectLessons = lessons.where((l) => l.subject == name).toList();

    final done = subjectLessons.where(
      (l) =>
          finishedHomework.contains(l.title) &&
          finishedTests.contains(l.title),
    ).length;

    return Card(
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: mauve.withOpacity(0.12),
          child: Icon(icon, color: purple),
        ),
        title: Text(
          name,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(subtitle),
        trailing: Text('$done / 2'),
      ),
    );
  }

  Widget homeworkPage() {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        const Text(
          'واجباتي 📚',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        const Text('اختاري الدرس وافتحي الواجب الخاص فيه.'),
        const SizedBox(height: 16),
        ...lessons.map((lesson) => lessonCard(lesson)),
        const SizedBox(height: 20),
        const Text(
          'مهام إضافية',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        ...extraTasks.map(
          (task) => Card(
            child: CheckboxListTile(
              value: task.completed,
              activeColor: purple,
              title: Text(task.title),
              subtitle: Text(task.subject),
              onChanged: (value) {
                setState(() {
                  if (value == true && !task.completed) points += 10;
                  if (value == false && task.completed) points -= 10;
                  task.completed = value ?? false;
                });
              },
            ),
          ),
        ),
        FilledButton.icon(
          onPressed: addTask,
          icon: const Icon(Icons.add),
          label: const Text('إضافة واجب جديد'),
          style: FilledButton.styleFrom(backgroundColor: purple),
        ),
      ],
    );
  }

  Widget lessonCard(Lesson lesson) {
    final done = finishedHomework.contains(lesson.title);

    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ExpansionTile(
        leading: Icon(
          done ? Icons.check_circle : Icons.assignment_outlined,
          color: done ? Colors.green : purple,
        ),
        title: Text(
          lesson.subject,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(lesson.title),
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'الواجب المطلوب:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                Text(lesson.homework),
                const SizedBox(height: 15),
                FilledButton(
                  onPressed: done ? null : () => completeHomework(lesson),
                  style: FilledButton.styleFrom(backgroundColor: purple),
                  child: Text(
                    done ? 'تم إنجاز الواجب ✓' : 'تحديد الواجب كمكتمل',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget testsPage() {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        const Text(
          'اختباراتي 📝',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        const Text('اختبري نفسك بعد مراجعة كل درس.'),
        const SizedBox(height: 16),
        ...lessons.map((lesson) {
          final done = finishedTests.contains(lesson.title);

          return Card(
            margin: const EdgeInsets.only(bottom: 12),
            child: ListTile(
              leading: const CircleAvatar(
                backgroundColor: Color(0xFFF0E2F5),
                child: Icon(Icons.quiz, color: purple),
              ),
              title: Text(lesson.subject),
              subtitle: Text(
                done
                    ? '${lesson.title} - الدرجة: ${scores[lesson.title]}'
                    : lesson.title,
              ),
              trailing: done
                  ? const Icon(Icons.check_circle, color: Colors.green)
                  : const Icon(Icons.arrow_forward_ios, size: 16),
              onTap: done ? null : () => startQuiz(lesson),
            ),
          );
        }),
      ],
    );
  }

  void startQuiz(Lesson lesson) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => QuizPage(
          lesson: lesson,
          onFinish: (score) => completeTest(lesson, score),
        ),
      ),
    );
  }

  Widget achievementsPage() {
    return ListView(
      padding: const EdgeInsets.all(18),
      children: [
        const Text(
          'إنجازاتي 🏆',
          style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 18),
        Container(
          padding: const EdgeInsets.all(22),
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [Color(0xFFFFD76A), Color(0xFFFFA726)],
            ),
            borderRadius: BorderRadius.circular(24),
            boxShadow: [
              BoxShadow(
                color: Colors.orange.withOpacity(0.2),
                blurRadius: 12,
                offset: const Offset(0, 5),
              ),
            ],
          ),
          child: Column(
            children: [
              const Icon(Icons.emoji_events, color: Colors.white, size: 65),
              const SizedBox(height: 8),
              Text(
                '$points نقطة',
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const Text(
                'رصيد إنجازاتك',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
        const SizedBox(height: 22),
        const Text(
          'أوسمتك الخاصة',
          style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 14),
        badgeCard(
          'نجمة البداية',
          'إنجاز أول مهمة',
          '⭐',
          Colors.orange,
          completedTasks >= 1,
        ),
        badgeCard(
          'نجمة مجتهدة',
          'الحصول على 30 نقطة',
          '🌟',
          Colors.amber,
          points >= 30,
        ),
        badgeCard(
          'بطلة الواجبات',
          'إنجاز جميع الواجبات',
          '🏅',
          Colors.pink,
          finishedHomework.length >= lessons.length,
        ),
        badgeCard(
          'متفوقة الاختبارات',
          'إنهاء جميع الاختبارات',
          '🥇',
          Colors.blue,
          finishedTests.length >= lessons.length,
        ),
        badgeCard(
          'ملكة الإنجاز',
          'إنجاز جميع المهام والاختبارات',
          '👑',
          Colors.deepPurple,
          completedTasks >= totalTasks,
        ),
      ],
    );
  }

  Widget badgeCard(
    String title,
    String description,
    String emoji,
    Color color,
    bool unlocked,
  ) {
    return Opacity(
      opacity: unlocked ? 1 : 0.48,
      child: Container(
        margin: const EdgeInsets.only(bottom: 14),
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: unlocked ? color.withOpacity(0.55) : Colors.grey.shade300,
            width: 1.5,
          ),
          boxShadow: [
            BoxShadow(
              color: color.withOpacity(0.10),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              width: 65,
              height: 65,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: unlocked
                      ? [color.withOpacity(0.75), color]
                      : [Colors.grey.shade300, Colors.grey.shade400],
                ),
                boxShadow: [
                  BoxShadow(
                    color: color.withOpacity(0.20),
                    blurRadius: 8,
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  unlocked ? emoji : '🔒',
                  style: const TextStyle(fontSize: 30),
                ),
              ),
            ),
            const SizedBox(width: 14),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: unlocked ? purple : Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    description,
                    style: const TextStyle(color: Colors.black54),
                  ),
                ],
              ),
            ),
            Icon(
              unlocked ? Icons.check_circle : Icons.lock_outline,
              color: unlocked ? Colors.green : Colors.grey,
            ),
          ],
        ),
      ),
    );
  }

  void addTask() {
    final titleController = TextEditingController();
    final subjectController = TextEditingController();

    showDialog(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: const Text('إضافة واجب'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: titleController,
              decoration: const InputDecoration(labelText: 'اسم الواجب'),
            ),
            TextField(
              controller: subjectController,
              decoration: const InputDecoration(labelText: 'المادة'),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(dialogContext),
            child: const Text('إلغاء'),
          ),
          FilledButton(
            onPressed: () {
              if (titleController.text.trim().isEmpty) return;

              setState(() {
                extraTasks.add(
                  StudyTask(
                    titleController.text.trim(),
                    subjectController.text.trim().isEmpty
                        ? 'عام'
                        : subjectController.text.trim(),
                  ),
                );
              });

              Navigator.pop(dialogContext);
            },
            child: const Text('إضافة'),
          ),
        ],
      ),
    );
  }
}

// رفيقة دراستي - إجابات الواجبات
class StudyChatPage extends StatefulWidget {
  const StudyChatPage({super.key});

  @override
  State<StudyChatPage> createState() => _StudyChatPageState();
}

class _StudyChatPageState extends State<StudyChatPage> {
  final controller = TextEditingController();
  final List<Map<String, String>> messages = [];

  final Map<String, String> homeworkAnswers = {
    // الرياضيات: خصائص الأعداد الحقيقية
    'ما المقصود بالأعداد الحقيقية':
        'الأعداد الحقيقية هي جميع الأعداد التي يمكن تمثيلها على خط الأعداد، وتشمل الأعداد النسبية وغير النسبية.',
    'اكتبي مثالاً على عدد نسبي':
        'مثال: 3/4 أو 2 أو 0.5.',
    'ما الخاصية المستخدمة في 3 + 5 = 5 + 3':
        'خاصية الإبدال؛ لأننا بدلنا ترتيب العددين دون أن يتغير الناتج.',
    'احسبي 4 × (2 + 3)':
        'أولاً نحسب ما داخل القوس: 2 + 3 = 5، ثم 4 × 5 = 20.',
    'اذكري الفرق بين العدد النسبي وغير النسبي':
        'العدد النسبي يمكن كتابته على صورة كسر من عددين صحيحين، أما غير النسبي فلا يمكن كتابته بهذه الصورة، وتمثيله العشري غير منته وغير دوري.',

    // الرياضيات: العلاقات والدوال
    'عرفي العلاقة الرياضية':
        'العلاقة الرياضية هي ارتباط بين عناصر مجموعتين، وتمثل بمجموعة من الأزواج المرتبة.',
    'ما المقصود بالدالة':
        'الدالة علاقة تربط كل عنصر من المجال بعنصر واحد فقط من المدى.',
    'ما الفرق بين المجال والمدى':
        'المجال هو مجموعة المدخلات أو القيم الأولى، والمدى هو مجموعة المخرجات أو القيم الناتجة.',
    'هل العلاقة 1 2 2 3 3 4 دالة ولماذا':
        'نعم، هي دالة؛ لأن كل عنصر من المجال ارتبط بعنصر واحد فقط من المدى.',
    'اعطي مثالاً على علاقة ليست دالة':
        'مثال: {(1,2)، (1,3)}؛ لأنها تربط المدخل 1 بمخرجين مختلفين.',

    // الكيمياء: الضوء وطاقة الكم
    'ما المقصود بالكم':
        'الكم هو أقل كمية محددة من الطاقة يمكن أن تكتسبها الذرة أو تفقدها.',
    'ما العلاقة بين التردد والطاقة':
        'العلاقة طردية؛ كلما زاد التردد زادت الطاقة، وكلما قل التردد قلت الطاقة.',
    'ما المقصود بالطول الموجي':
        'هو المسافة بين قمتين متتاليتين أو قاعين متتاليين في الموجة.',
    'اذكري خصائص الموجات الضوئية':
        'الضوء موجات كهرومغناطيسية مستعرضة، ينتقل في الفراغ، وله طول موجي وتردد، وتنتقل موجاته بسرعة الضوء.',
    'ما المقصود بالفوتون':
        'الفوتون هو حزمة أو كمية محددة من الطاقة الضوئية.',

    // الكيمياء: نظرية الكم والذرة
    'ما المقصود بالنموذج الميكانيكي الكمي':
        'هو نموذج يصف سلوك الإلكترونات في الذرة باستخدام مبادئ ميكانيكا الكم، ويحدد احتمالية وجود الإلكترون في مناطق معينة حول النواة.',
    'عرفي الأوربيتال':
        'الأوربيتال منطقة حول النواة يكون احتمال وجود الإلكترون فيها كبيراً.',
    'ما أعداد الكم':
        'أعداد الكم أربعة أعداد تصف حالة الإلكترون في الذرة، وهي: الرئيسي والثانوي والمغناطيسي والمغزلي.',
    'ما المقصود بمستوى الطاقة':
        'هو مستوى محدد من الطاقة يمكن أن يوجد فيه الإلكترون حول نواة الذرة.',
    'ما الفرق بين المدار والأوربيتال':
        'المدار مسار محدد كان يستخدم في النماذج القديمة لوصف حركة الإلكترون، أما الأوربيتال فهو منطقة احتمالية حول النواة يمكن وجود الإلكترون فيها.',

    // الأحياء: شوكيات الجلد
    'لماذا سميت شوكيات الجلد بهذا الاسم':
        'سميت بهذا الاسم لأن جلدها يحمل أشواكاً أو نتوءات شوكية.',
    'ما أهم خصائص شوكيات الجلد':
        'حيوانات بحرية، لها هيكل داخلي، وجلد شوكي، وتمتلك جهازاً وعائياً مائياً وأقداماً أنبوبية، ويظهر التناظر الشعاعي في البالغات.',
    'ما وظيفة الجهاز الوعائي المائي':
        'يساعد في الحركة والتغذية وتبادل الغازات، ويشغل الأقدام الأنبوبية.',
    'كيف تتحرك شوكيات الجلد':
        'تتحرك بواسطة الأقدام الأنبوبية التي تعمل بمساعدة الجهاز الوعائي المائي.',
    'اذكري مثالين على شوكيات الجلد':
        'نجم البحر وقنفذ البحر، ومن أمثلتها أيضاً خيار البحر.',

    // الأحياء: اللافقاريات الحبلية
    'ما المقصود باللافقاريات الحبلية':
        'هي حيوانات تنتمي إلى شعبة الحبليات، لكنها لا تمتلك عموداً فقرياً، ويظهر لديها الحبل الظهري في مرحلة من مراحل حياتها.',
    'ما الحبل الظهري':
        'هو تركيب مرن يشبه القضيب، يمتد على طول الجسم ويساعد على دعمه.',
    'ما وظيفة الشقوق البلعومية':
        'تساعد في ترشيح الغذاء أو تبادل الغازات بحسب نوع الحيوان ومرحلة نموه.',
    'اذكري مثالاً على اللافقاريات الحبلية':
        'السهيم أو الكيسيات.',
    'ما خصائص الكيسيات':
        'الكيسيات حيوانات بحرية، تكون يرقاتها حرة السباحة وتمتلك حبلاً ظهرياً، أما البالغة فكثير منها يثبت في مكانه ويكون جسمه محاطاً بغلاف.',

    // التقنية الرقمية: تمثيل البيانات
    'ما المقصود بالنظام الثنائي':
        'هو نظام عددي يستخدم رقمين فقط هما 0 و1 لتمثيل البيانات داخل الحاسب.',
    'ما الفرق بين النظام الثنائي والعشري':
        'النظام الثنائي أساسه 2 ويستخدم الرقمين 0 و1، أما النظام العشري فأساسه 10 ويستخدم الأرقام من 0 إلى 9.',
    'ما المقصود بتمثيل الصور الرقمية':
        'هو تحويل الصورة إلى شبكة من وحدات صغيرة تسمى البكسلات، وتمثل ألوانها وبياناتها رقمياً.',
    'ما وظيفة البوابات المنطقية':
        'تنفذ العمليات المنطقية على المدخلات الثنائية، وتنتج مخرجات وفق قواعد منطقية مثل AND وOR وNOT.',
    'ما المقصود بالترانزستور':
        'هو عنصر إلكتروني يستخدم لتضخيم الإشارات أو العمل كمفتاح إلكتروني يتحكم في مرور التيار.',
    'ما الدارات المتكاملة':
        'هي دوائر إلكترونية تحتوي على مجموعة من المكونات مثل الترانزستورات والمقاومات، مصنعة على شريحة صغيرة.',

    // التقنية الرقمية: بنية جهاز الحاسب
    'ما المقصود بدورة الجلب والتنفيذ':
        'هي دورة عمل المعالج، وتشمل جلب التعليمة من الذاكرة، ثم فك ترميزها، ثم تنفيذها.',
    'ما وظيفة وحدة المعالجة المركزية':
        'تنفذ تعليمات البرامج وتعالج البيانات، وتنسق عمل أجزاء الحاسب.',
    'ما المقصود بالذاكرة الرئيسة':
        'هي الذاكرة التي تخزن البيانات والتعليمات التي يحتاج إليها المعالج أثناء عمل الحاسب.',
    'ما الفرق بين ram و rom':
        'RAM ذاكرة مؤقتة قابلة للقراءة والكتابة وتفقد محتوياتها عند إيقاف التشغيل، أما ROM فتحتفظ بمحتوياتها ولا تفقدها عند إيقاف التشغيل.',
    'اذكري مثالين على وحدات التخزين':
        'القرص الصلب HDD وذاكرة USB، ويمكن أيضاً استخدام SSD.',
    'ما وظيفة وحدة التحكم':
        'تنظم تنفيذ التعليمات وتوجه عمل وحدات الحاسب وتنسق انتقال البيانات بينها.',
  };

  String normalize(String text) {
    return text
        .toLowerCase()
        .replaceAll('أ', 'ا')
        .replaceAll('إ', 'ا')
        .replaceAll('آ', 'ا')
        .replaceAll('ة', 'ه')
        .replaceAll('ى', 'ي')
        .replaceAll('ؤ', 'و')
        .replaceAll('ئ', 'ي')
        .replaceAll(RegExp(r'[؟?.,،!؛:(){}\[\]ـ]'), '')
        .replaceAll(RegExp(r'\s+'), ' ')
        .trim();
  }

  final Set<String> stopWords = {
    'ما', 'ماذا', 'هل', 'هو', 'هي', 'من', 'في', 'على',
    'عن', 'ماهو', 'ماهي', 'المقصود', 'بالمقصود', 'اذكري',
    'اذكر', 'اكتبي', 'اكتب', 'اعطي', 'اعطيني', 'عرفي',
    'عرف', 'بين', 'الفرق', 'بينهما', 'كيف', 'لماذا',
    'كم', 'الذي', 'التي', 'او', 'و', 'ثم', 'مع',
  };

  String? findHomeworkAnswer(String question) {
    final normalizedQuestion = normalize(question);

    // البحث عن تطابق مباشر أولاً
    for (final entry in homeworkAnswers.entries) {
      final key = normalize(entry.key);

      if (normalizedQuestion == key ||
          normalizedQuestion.contains(key) ||
          key.contains(normalizedQuestion)) {
        return entry.value;
      }
    }

    // البحث بالكلمات المهمة إذا اختلفت صياغة السؤال
    final questionWords = normalizedQuestion
        .split(' ')
        .where((word) => word.length > 1 && !stopWords.contains(word))
        .toSet();

    if (questionWords.isEmpty) return null;

    String? bestAnswer;
    double bestScore = 0;

    for (final entry in homeworkAnswers.entries) {
      final keyWords = normalize(entry.key)
          .split(' ')
          .where((word) => word.length > 1 && !stopWords.contains(word))
          .toSet();

      if (keyWords.isEmpty) continue;

      final commonWords = questionWords.intersection(keyWords).length;
      final score = commonWords / keyWords.length;

      if (score > bestScore) {
        bestScore = score;
        bestAnswer = entry.value;
      }
    }

    if (bestScore >= 0.5) return bestAnswer;

    return null;
  }

  String getReply(String question) {
    final answer = findHomeworkAnswer(question);

    if (answer != null) {
      return '📚 الإجابة:\n\n$answer';
    }

    final q = normalize(question);

    if (q.contains('مرحبا') || q.contains('هلا') || q.contains('السلام')) {
      return 'أهلًا فيكِ! 💜 أنا رفيقة دراستك. اسأليني عن واجباتك أو دروسك.';
    }

    if (q.contains('رياضيات') || q.contains('داله') ||
        q.contains('الاعداد') || q.contains('المجال')) {
      return '📐 خلينا نراجع الرياضيات!\n\n'
          'عندك درسان: خصائص الأعداد الحقيقية، والعلاقات والدوال.\n'
          'اكتبي سؤالك من الواجب وبجاوبك عليه.';
    }

    if (q.contains('كيمياء') || q.contains('كم') ||
        q.contains('ذره') || q.contains('فوتون')) {
      return '🧪 خلينا نراجع الكيمياء!\n\n'
          'عندك درسان: الضوء وطاقة الكم، ونظرية الكم والذرة.\n'
          'اكتبي سؤالك من الواجب وبجاوبك عليه.';
    }

    if (q.contains('احياء') || q.contains('شوكيات') ||
        q.contains('حبليه') || q.contains('سهيم')) {
      return '🧬 خلينا نراجع الأحياء!\n\n'
          'عندك درسان: خصائص شوكيات الجلد، واللافقاريات الحبلية.\n'
          'اكتبي سؤالك من الواجب وبجاوبك عليه.';
    }

    if (q.contains('تقنيه') || q.contains('ثنائي') ||
        q.contains('بيانات') || q.contains('حاسب') ||
        q.contains('ram') || q.contains('rom')) {
      return '💻 خلينا نراجع التقنية الرقمية!\n\n'
          'عندك درسان: تمثيل البيانات، وبنية جهاز الحاسب.\n'
          'اكتبي سؤالك من الواجب وبجاوبك عليه.';
    }

    if (q.contains('جدول') || q.contains('اذاكر') ||
        q.contains('مذاكره')) {
      return '📚 اقتراحي للمذاكرة:\n\n'
          '1. ابدئي بالدرس الأصعب.\n'
          '2. ذاكري لمدة 25 دقيقة.\n'
          '3. خذي استراحة 5 دقائق.\n'
          '4. اختبري نفسك بعد المراجعة.\n\n'
          'ولا تنسين توزعين المواد على أيام الأسبوع!';
    }

    if (q.contains('اختبريني') || q.contains('سؤال')) {
      return '✨ سؤال مراجعة:\n\n'
          'ما الأرقام المستخدمة في النظام الثنائي؟\n\n'
          'أ) 0 و1\n'
          'ب) 1 و2\n'
          'ج) 0 إلى 9\n\n'
          'اكتبي إجابتك، وأنا أساعدك تعرفين إذا كانت صحيحة.';
    }

    if (q.contains('شكرا')) {
      return 'العفو! 💜 كمّلي إنجازاتك، وكل خطوة تقربك من هدفك.';
    }

    return 'ما لقيت إجابة مطابقة في أسئلة الواجبات. 💜\n\n'
        'جربي تكتبين السؤال بطريقة ثانية، أو اكتبي اسم الدرس والمادة.';
  }

  void sendMessage() {
    final text = controller.text.trim();
    if (text.isEmpty) return;

    setState(() {
      messages.add({
        'role': 'user',
        'content': text,
      });

      messages.add({
        'role': 'assistant',
        'content': getReply(text),
      });

      controller.clear();
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(20),
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [purple, mauve]),
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(25),
            ),
          ),
          child: const Column(
            children: [
              Icon(
                Icons.smart_toy_rounded,
                color: Colors.white,
                size: 48,
              ),
              SizedBox(height: 8),
              Text(
                'رفيقة دراستي 🤖',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'مساعدتك للمراجعة وتنظيم المذاكرة 💜',
                style: TextStyle(color: Colors.white70),
              ),
            ],
          ),
        ),
        Expanded(
          child: messages.isEmpty
              ? const Center(
                  child: Padding(
                    padding: EdgeInsets.all(25),
                    child: Text(
                      'أهلًا بكِ! ✨\n'
                      'اسأليني عن واجبات الرياضيات أو الكيمياء أو الأحياء أو التقنية الرقمية.',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 17, height: 1.8),
                    ),
                  ),
                )
              : ListView.builder(
                  padding: const EdgeInsets.all(14),
                  itemCount: messages.length,
                  itemBuilder: (context, index) {
                    final message = messages[index];
                    final isUser = message['role'] == 'user';

                    return Align(
                      alignment: isUser
                          ? Alignment.centerRight
                          : Alignment.centerLeft,
                      child: Container(
                        constraints: const BoxConstraints(maxWidth: 290),
                        margin: const EdgeInsets.symmetric(vertical: 6),
                        padding: const EdgeInsets.all(14),
                        decoration: BoxDecoration(
                          color: isUser
                              ? mauve.withOpacity(0.15)
                              : Colors.white,
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: Text(
                          message['content']!,
                          style: const TextStyle(height: 1.6),
                        ),
                      ),
                    );
                  },
                ),
        ),
        Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  controller: controller,
                  textInputAction: TextInputAction.send,
                  onSubmitted: (_) => sendMessage(),
                  decoration: InputDecoration(
                    hintText: 'اكتبي سؤالك هنا...',
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              IconButton.filled(
                onPressed: sendMessage,
                style: IconButton.styleFrom(backgroundColor: purple),
                icon: const Icon(Icons.send, color: Colors.white),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class QuizPage extends StatefulWidget {
  final Lesson lesson;
  final Function(int) onFinish;

  const QuizPage({
    super.key,
    required this.lesson,
    required this.onFinish,
  });

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int current = 0;
  int score = 0;
  int? selected;
  bool finished = false;

  void nextQuestion() {
    if (selected == null) return;

    if (selected == widget.lesson.questions[current].answer) {
      score++;
    }

    if (current == widget.lesson.questions.length - 1) {
      setState(() => finished = true);
      widget.onFinish(score);
    } else {
      setState(() {
        current++;
        selected = null;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final questions = widget.lesson.questions;

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: purple,
          foregroundColor: Colors.white,
          title: Text('اختبار ${widget.lesson.subject}'),
        ),
        body: finished
            ? Center(
                child: Padding(
                  padding: const EdgeInsets.all(25),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(
                        Icons.emoji_events,
                        color: Colors.amber,
                        size: 85,
                      ),
                      const Text(
                        'أحسنتِ! انتهى الاختبار',
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 15),
                      Text(
                        'درجتك: $score من ${questions.length}',
                        style: const TextStyle(fontSize: 20),
                      ),
                      const SizedBox(height: 20),
                      FilledButton(
                        onPressed: () => Navigator.pop(context),
                        style: FilledButton.styleFrom(backgroundColor: purple),
                        child: const Text('العودة'),
                      ),
                    ],
                  ),
                ),
              )
            : Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.lesson.title,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 15),
                    LinearProgressIndicator(
                      value: (current + 1) / questions.length,
                      color: mauve,
                      minHeight: 8,
                    ),
                    const SizedBox(height: 25),
                    Text(
                      'السؤال ${current + 1} من ${questions.length}',
                      style: const TextStyle(color: purple),
                    ),
                    const SizedBox(height: 15),
                    Text(
                      questions[current].text,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    ...List.generate(
                      questions[current].options.length,
                      (index) => Card(
                        color: selected == index
                            ? mauve.withOpacity(0.15)
                            : Colors.white,
                        child: RadioListTile<int>(
                          value: index,
                          groupValue: selected,
                          activeColor: purple,
                          title: Text(questions[current].options[index]),
                          onChanged: (value) {
                            setState(() => selected = value);
                          },
                        ),
                      ),
                    ),
                    const Spacer(),
                    SizedBox(
                      width: double.infinity,
                      child: FilledButton(
                        onPressed: selected == null ? null : nextQuestion,
                        style: FilledButton.styleFrom(
                          backgroundColor: purple,
                          padding: const EdgeInsets.all(15),
                        ),
                        child: Text(
                          current == questions.length - 1
                              ? 'إنهاء الاختبار'
                              : 'السؤال التالي',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}
