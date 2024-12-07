







import 'package:flutter/material.dart';

class viewdetailspopup extends StatefulWidget {
  const viewdetailspopup({super.key});

  @override
  State<viewdetailspopup> createState() => _viewdetailspopupState();
}

class _viewdetailspopupState extends State<viewdetailspopup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Carpenter'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildServiceCard(),
            const SizedBox(height: 20),
            const Text(
              'Frequently added together',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            _buildFrequentlyAddedSection(),
            const SizedBox(height: 20),
            _buildDetailsSection(),
            const SizedBox(height: 20),
            _buildFAQSection(),
            const SizedBox(height: 20),
            _buildReviewsSection(),
          ],
        ),
      ),
    );
  }

  Widget _buildServiceCard() {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              'https://via.placeholder.com/100',
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Drill & hang (wall)',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: const [
                      Icon(Icons.star, color: Colors.amber, size: 16),
                      Text(' 5.5k reviews'),
                    ],
                  ),
                  const SizedBox(height: 8),
                  const Text('₹40 | 20 mins'),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.remove),
                      ),
                      const Text('2'),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.add),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFrequentlyAddedSection() {
    return Column(
      children: [
        _buildFrequentlyAddedCard('Carpenter visit', '₹49'),
        _buildFrequentlyAddedCard('Wooden shelf installation', '₹149'),
        _buildFrequentlyAddedCard('Custom furniture installation', '₹799'),
      ],
    );
  }

  Widget _buildFrequentlyAddedCard(String title, String price) {
    return Card(
      elevation: 2,
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.grey[200],
          child: Icon(Icons.construction, color: Colors.blue),
        ),
        title: Text(title),
        trailing: Text(price, style: const TextStyle(fontWeight: FontWeight.bold)),
        onTap: () {},
      ),
    );
  }

  Widget _buildDetailsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Included',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        const Text('✔ Adjustment of channels to remove distractions'),
        const Text('✔ Clean-up after the service'),
        const Text('✔ Warranty & damage cover'),
        const SizedBox(height: 20),
        const Text(
          'Excluded',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        const Text('✘ Repair of broken channel'),
        const Text('✘ Warranty on spare parts provided by customers'),
      ],
    );
  }

  Widget _buildFAQSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Frequently Asked Questions',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        _buildFAQItem(
            'Is this service applicable for metal/glass doors?', 'Yes, it is.'),
        _buildFAQItem(
            'Are extra parts included in the cost?', 'No, they are not.'),
      ],
    );
  }

  Widget _buildFAQItem(String question, String answer) {
    return ExpansionTile(
      title: Text(question),
      children: [Padding(padding: const EdgeInsets.all(8.0), child: Text(answer))],
    );
  }

  Widget _buildReviewsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Reviews',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        _buildReview('Yagnesh', 'Oct 1, 2024', '4.5', 'Service was good.'),
        _buildReview('Prasad', 'Sep 12, 2024', '5.0',
            'Work done neatly and exactly as per instructions.'),
      ],
    );
  }

  Widget _buildReview(
      String name, String date, String rating, String comment) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.blue[100],
        child: Text(name[0]),
      ),
      title: Text('$name ($rating ★)'),
      subtitle: Text('$date\n$comment'),
      isThreeLine: true,
    );
  }
}
