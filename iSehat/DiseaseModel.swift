//
//  DiseaseModel.swift
//  iSehat
//
//  Created by Muhammad Firdaus on 10/04/21.
//

import Foundation

struct DiseaseModel {
    var title: String?
    var image: String?
    var deskripsi: String?
    var symptoms: String?
    var cause: String?
    var treatment: String?
    var doctor: String?
}

struct SectionDiseaseModel {
    var title: String?
    var content: String?
}

func getDataDisease() -> [DiseaseModel] {
    var diseaseTemp = [DiseaseModel]()
    
    let sakitKepala = DiseaseModel(title: "Sakit Kepala", image: "sakit-kepala", deskripsi: """
    Sakit kepala adalah rasa sakit atau nyeri di kepala, yang bisa muncul secara bertahap atau mendadak. Nyeri bisa muncul di salah satu sisi kepala, atau di seluruh bagian kepala. Sakit kepala bisa membuat kepala terasa berdenyut, atau seperti terlilit kencang oleh tali.
""",
                                   symptoms: """
    Gejala sakit kepala adalah sakit atau nyeri di kepala, yang bisa menyebar ke wajah, leher, dan bahu. Penglihatan penderita juga dapat menjadi buram, serta lebih sensitif terhadap cahaya dan suara.

        Segera periksakan diri ke dokter bila sakit kepala disertai muntah, leher kaku, gangguan penglihatan, bicara kacau, atau kejang. Bisa jadi hal tersebut merupakan gejala dari penyakit yang berbahaya.
""",                                cause: """
    Sakit kepala terjadi akibat aktifnya saraf nyeri di kepala. Kondisi ini dapat dipicu oleh beberapa perilaku sehari-hari, seperti kurang tidur, telat makan, atau pilihan makanan yang kurang tepat. Sakit kepala juga dapat dipicu oleh sejumlah penyakit, antara lain sakit gigi, infeksi telinga, migrain atau migrain pada anak, hipertensi, atau tumor otak.
""", treatment: """
    Pengobatan sakit kepala tergantung dari penyebabnya. Bila tidak ada gejala lain yang berbahaya, sakit kepala dapat diredakan dengan obat-obatan yang dijual bebas, seperti paracetamol. Bila sakit kepala dirasa mengkhawatirkan, segeralah berkonsultasi dengan dokter untuk mendapatkan pemeriksaan dan penanganan yang sesuai.

    Untuk mencegah sakit kepala akibat perilaku sehari-hari, terapkanlah perilaku hidup yang sehat, misalnya beristirahat dengan cukup dan rutin berolahraga. Sedangkan untuk sakit kepala akibat suatu penyakit, pencegahan yang terbaik adalah dengan mengobati penyebabnya.
""", doctor: "dr. Tjin Willy, alodokter.com")
    let demam = DiseaseModel(title: "Demam", image: "demam", deskripsi: """
    Demam adalah kondisi meningkatnya suhu tubuh hingga lebih dari 380C. Demam menandakan adanya penyakit atau kondisi lain di dalam tubuh.
""",
                                   symptoms: """
    Demam merupakan gejala dari beragam kondisi dan penyakit. Biasanya, demam akan disertai gejala lain akibat kondisi yang mendasarinya. Beberapa di antaranya adalah:

    1. Sakit kepala
    2. Berkeringat
    3. Menggigil
    4. Lemas
    5. Nyeri otot
    6. Kehilangan nafsu makan

""",                                cause: """
    Demam dapat disebabkan oleh berbagai kondisi, seperti:

    - Penyakit infeksi, seperti infeksi
    virus, bakteri, jamur, parasit.
    - Penyakit yang menyebabkan peradangan
    kronis, seperti reumathoid arthritis.
    - Menerima beberapa jenis
    imunisasi, seperti difteri dan tetanus.
    - Menerima obat.
    - Kanker.
""", treatment: """
    Karena demam merupakan gejala dari suatu kondisi atau penyakit, pengobatannya perlu disesuaikan dengan penyebabnya.

    Demam dapat menimbulkan rasa tidak nyaman. Hal tersebut dapat diatasi dengan beristirahat, minum air putih yang cukup, dan mengonsumsi obat penurun demam, seperti paracetamol.

    Apabila demam disebabkan oleh infeksi, maka dokter akan memberikan obat untuk mengatasi infeksi tersebut. Beberapa obat yang dapat diberikan adalah:

    - Obat antivirus
    - Obat antibiotik
    - Obat antijamur

    Demam dapat dicegah hanya jika kondisi atau penyakit yang menyebabkan demam dapat dihindari.
""", doctor: "dr. Merry Dame Cristy Pane, alodokter.com")
    let sakitPerut = DiseaseModel(title: "Sakit Perut", image: "sakit-perut", deskripsi: """
    Sakit perut adalah rasa nyeri yang muncul di perut, yaitu area di antara tulang iga dan tulang panggul. Ketika mengalami sakit perut, seseorang dapat merasakan kram, mulas, atau rasa seperti tertusuk di perut.
""",
                                   symptoms: """
    Sakit perut bisa terasa seperti kram, mulas, atau menusuk, dengan tingkatan ringan hingga berat. Terkadang, nyeri perut juga bisa muncul beserta kedutan di perut. Area perut yang sakit bisa berbeda-beda, tergantung kepada penyebabnya. Pada sejumlah kondisi, nyeri juga dapat berpindah dari satu area perut ke area perut yang lain.

    Selain itu, sifat dan lamanya sakit perut juga bisa berbeda, seperti:

    - Muncul perlahan atau tiba-tiba.
    - Hilang timbul atau menetap.
    - Berlangsung sebentar atau lama
    (hingga beberapa jam,
    bahkan beberapa hari).
    - Sakit berkurang atau bertambah
   
    pada posisi dan gerakan tertentu, misalnya bersin atau
""",                                cause: """
    Penyebab sakit perut sangat beragam, karena di dalam perut terdapat berbagai organ yang bila mengalami gangguan dapat menyebabkan gejala berupa sakit perut. Seperti telah dikatakan sebelumnya, area perut yang sakit bisa dibagi menjadi nyeri perut atas ataupun bawah, tergantung penyebabnya.

    Berikut ini adalah beberapa penyebab sakit perut berdasarkan letak nyeri yang dirasakan:

    1. Sakit perut kanan atas

    Beberapa penyakit penyebab sakit perut kanan atas adalah:

    - Hepatitis
    - Batu empedu
    - Radang kandung empedu
    - Infeksi ginjal
    - Batu ginjal
    - Kanker hati

    Selain karena organ di dalam perut, sakit perut kanan atas juga dapat disebabkan oleh gangguan paru-paru, misalnya radang selaput
    paru atau paru-paru basah.

    2. Sakit perut kanan bawah

    Sakit perut kanan bawah dapat disebabkan oleh:

    - Usus buntu
    - Infeksi saluran kemih
    - Batu saluran kemih
    - Radang usus
    - Sumbatan (obstruksi) usus
    - Hernia
    
    3. Sakit perut kiri atas

    Beberapa penyebab sakit perut kiri atas:

    - Pembesaran limpa
    - Infeksi ginjal
    - Batu ginjal
    - Sembelit
    
    Sama halnya dengan sakit perut kanan atas, sakit perut kiri atas juga bisa disebabkan oleh masalah di paru-paru. Bukan hanya gangguan
    paru-paru, angina dan serangan jantung juga bisa mengakibatkan sakit perut kiri atas.

    4. Sakit perut kiri bawah

    Penyebab dari sakit perut kiri bawah antara lain adalah:

    - Infeksi saluran kemih
    - Batu saluran kemih
    - Sumbatan (obstruksi) usus
    - Radang usus
    
    5. Sakit perut bagian tengah

    Sakit perut di bagian tengah atas (ulu hati) dapat disebabkan oleh sakit maag, tukak lambung, atau radang organ pankreas. Masalah
    pada jantung juga dapat menyebabkan sakit di ulu hati.

    Sedangkan sakit perut di bagian tengah bawah, dapat disebabkan oleh radan
    saluran pencernaan dan radang kandung kemih.

    Khusus untuk wanita, kelainan pada organ reproduksi dapat menyebabkan sakit perut bagian bawah. Kelainan tersebut antara lain:

    - Kista indung telur
    - Penyakit radang panggul
    - Endometriosis
    - Kehamilan ektopik
    - Keguguran
""", treatment: """
    Cara mengobati sakit perut tergantung pada penyebabnya. Sebagai contoh, dokter cukup menyarankan perubahan pola makan, bila sakit perut disebabkan oleh pola makan yang kurang baik. Sedangkan pada sakit perut yang disebabkan oleh infeksi bakteri, dokter akan meresepkan obat antibiotik.

    Obat-obatan lain juga bisa diberikan pada sakit perut yang disebabkan oleh penyakit asam lambung (GERD) atau peradangan. Pada beberapa kasus, operasi harus dilakukan untuk mengatasi sakit perut yang disebabkan oleh hernia atau usus buntu.

    Pasien juga bisa melakukan beberapa langkah sederhana di rumah, guna meredakan gejala sakit perut, yaitu:

    - Menempelkan bantal pemanas
    di area perut yang sakit.
    - Mengelola stres dengan
    olahraga atau meditasi.
    - Tidak makan sekaligus
    dalam porsi besar.
    - Mengunyah makanan secara
    perlahan sampai lunak.
    - Menghindari makanan
    yang bisa memicu
    sakit perut, misalnya
    makanan pedas atau berlemak.
    - Pencegahan Sakit Perut

    Tidak semua penyebab sakit perut dapat dicegah, namun risiko terserang sakit perut dapat dikurangi dengan sejumlah langkah berikut:

    – Mencuci tangan, terutama
    sebelum menyentuh makanan.
    – Memperbanyak minum air putih.
    – Rutin berolahraga.
    – Berhenti merokok.
    – Membatasi konsumsi
    minuman beralkohol.
    – Tidak langsung berbaring setelah
    makan, beri waktu minimal 2 jam.
    
    Selain melakukan langkah pencegahan di atas, tak ada salahnya untuk mengikuti asuransi kesehatan yang terpercaya. Hal ini karena
    sakit perut mungkin saja disebabkan oleh penyakit tertentu yang membutuhkan biaya pengobatan yang tidak sedikit.
""", doctor: "dr. Tjin Willy, alodokter.com")
    let pusing = DiseaseModel(title: "Pusing", image: "pusing", deskripsi: """
    Pusing adalah sensasi seperti melayang, berputar, kliyengan, atau merasa akan pingsan. Pusing bisa dialami oleh siapa saja dan sensasinya dapat dirasakan berbeda antara satu orang dengan orang lainnya.
""",
    symptoms: """
    Pusing dapat ditandai dengan munculnya sensasi berikut:

    - Merasa seperti melayang
    atau hilang keseimbangan.
    - Kliyengan atau merasa
    akan pingsan.
    - Kepala terasa berat
    - Kondisi sekitar terasa
    seperti berputar atau
    pusing tujuh keliling.
    
    Sensasi pusing ini dapat datang tiba-tiba (mendadak) atau perlahan serta hanya sebentar atau terus menerus berkepanjangan.
    
    Pusing yang dirasakan juga dapat bertambah parah ketika penderitanya berjalan, berdiri, duduk, berbaring, atau saat menggerakan kepala.

    Pusing juga dapat disertai dengan gejala lain, seperti lemas, mual, muntah, dan keringat dingin. Semua keluhan pusing tersebut dapat dirasakan berbeda-beda tiap orang tergantung dari penyebabnya.
""",
    cause: """
   Pusing jarang disebabkan oleh sesuatu yang berbahaya. Terkadang pusing terjadi akibat adanya perubahan di dalam sistem tubuh yang kompleks, misalnya saat hamil, saat bangun tidur, setelah olahraga, atau ketika haid. Kondisi tersebut sulit untuk ditelusuri penyebabnya.
""", treatment: """
    Biasanya, pusing dapat sembuh tanpa penanganan khusus karena tubuh akan beradaptasi dengan perubahan sistem tubuh yang menyebabkan pusing.
    Untuk membantu mencegah dan meredakan pusing yang dirasakan, terdapat beberapa hal yang dapat dilakukan di rumah, antara lain:

    - Olahraga secara rutin.
    - Mengonsumsi cukup air putih.
    - Duduk atau berbaring saat
    merasa pusing untuk meredakan
    sensasi yang dirasakan.
    Jika yang dirasakan adalah
    vertigo, berbaring dapat
    dibarengi dengan menutup
    mata di dalam
    ruangan yang gelap.
    - Istirahat dalam ruangan yang sejuk.
    - Berjalan menggunakan
    tongkat dan menghindari
    berjalan terlalu cepat
    jika pusing yang
    dirasakan cukup parah.
    - Menghentikan konsumsi
    kafein (minum kopi) dan
    alkohol, serta hindari
    rokok karena dapat
    memperburuk sensasi
    yang dirasakan.
    - Mengonsumsi obat antihistamin
    yang dijual bebas untuk
    membantu meredakan gejala.
    - Diet sehat rendah garam
    dapat membantu menangani
    penyakit Meniere, yang
    bisa menjadi salah
    satu penyebab pusing.
    
    Pengobatan ke dokter harus dilakukan jika muncul gejala yang mengkhawatirkan, seperti yang telah dijelaskan sebelumnya.
    Dokter akan menentukan pengobatan berdasarkan penyebab dari kondisi dan gejala yang dialami.

    Jika pusing yang dialami tidak membaik, dokter akan memberikan beberapa obat di bawah ini untuk meredakan gejala yang dirasakan:

    - Diuretik untuk menangani penyakit Meniere
    - Obat untuk menangani
    vertigo dan mual, seperti
    antihistamin dan antikolinergik.
    - Obat antikecemasan.
    
    Selain obat-obatan di atas, ada beberapa terapi yang dapat dilakukan untuk membantu menangani gejala pusing, antara lain terapi perubahan posisi kepala (terapj Epley) untuk pusing akibat vertigo, terapi keseimbangan, dan psikoterapi.

    Beberapa prosedur lain, seperti pengangkatan bagian organ pendengaran, juga dapat dilakukan jika beberapa metode di atas tidak dapat
    mengobati rasa pusing yang dialami.
""", doctor: "dr. Tjin Willy, alodokter.com")
    
    diseaseTemp.append(sakitKepala)
    diseaseTemp.append(demam)
    diseaseTemp.append(sakitPerut)
    diseaseTemp.append(pusing)
    return diseaseTemp
}
