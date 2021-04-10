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
""")
    let demam = DiseaseModel(title: "Demam", image: "demam")
    let sakitPerut = DiseaseModel(title: "Sakit Perut", image: "sakit-perut")
    let pusing = DiseaseModel(title: "Pusing", image: "pusing")
    
    diseaseTemp.append(sakitKepala)
    diseaseTemp.append(demam)
    diseaseTemp.append(sakitPerut)
    diseaseTemp.append(pusing)
    return diseaseTemp
}
