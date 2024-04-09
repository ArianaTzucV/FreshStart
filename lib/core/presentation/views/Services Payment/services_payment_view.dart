import 'package:flutter/material.dart';

class EstadoDeCuentaWidget extends StatelessWidget {
  const EstadoDeCuentaWidget({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.black,
                        size: 24,
                      ),
                      onPressed: () {
                        // Aquí puedes definir la función a ejecutar cuando se presione el botón de flecha
                      },
                    ),
                    Expanded(
                      flex: 50,
                      child: Center(
                        child: Text(
                          'Pago de Servicios',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                buildServiceCategory('Luz'),
                SizedBox(height: 10),
                buildServiceItem('assets/image/CFE.png', 'CFE'),
                SizedBox(height: 20),
                buildServiceCategory('Telefonía, Internet y TV'),
                SizedBox(height: 10),
                buildServiceItem('assets/image/CFE.png', 'Telcel Postpago'),
                SizedBox(height: 10),
                buildServiceItem('assets/image/CFE.png', 'Telmex'),
                SizedBox(height: 10),
                buildServiceItem('assets/image/CFE.png', 'TotalPlay'),
                SizedBox(height: 20),
                buildServiceCategory('Agua'),
                SizedBox(height: 10),
                buildServiceItem('assets/image/CFE.png', 'AGUAKAN (Cancún)'),
              ],
            ),
          ),
        ),
      );
  }

  Widget buildServiceCategory(String categoryName) {
    return Row(
      children: [
        Text(
          categoryName,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: const Color(0xff060912),
          ),
        ),
      ],
    );
  }

  Widget buildServiceItem(String imagePath, String serviceName) {
    return Container(
      width: 365,
      height: 70,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.circular(15),
        boxShadow: const [
          BoxShadow(
            color: const Color(0x19000000),
            offset: Offset(0, 8),
            blurRadius: 10,
          ),
        ],
      ),
      child: Row(
        children: [
          SizedBox(width: 12),
          Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Image.asset(
              imagePath,
              width: 50,
              height: 50,
            ),
          ),
          SizedBox(width: 10),
          Text(
            serviceName,
            style: TextStyle(
              fontSize: 20,
              color: const Color.fromARGB(255, 0, 0, 0),
              fontWeight: FontWeight.normal,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
