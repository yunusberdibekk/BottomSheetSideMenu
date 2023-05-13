//
//  FeedView.swift
//  BottomSheets
//
//  Created by Yunus Emre Berdibek on 14.05.2023.
//

import SwiftUI

struct FeedView: View {
    @State private var show = false
    
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    Button {
                        show.toggle()
                    } label: {
                        Image(systemName: "list.bullet")
                    }
                    Spacer()
                }
                .padding(.all)
                Spacer()
                
                Text("Nasus, uzun yıllar boyunca evrende var olan bilgeliği ve gücü arayan esrarengiz bir şampiyondur. Kahraman, büyük bir çölde yüzyıllardır hapsolmuş bir şekilde uyandı. İlahi bir varlık olan Xerath'ın yanılsamasından kurtulup gerçek gücüne ulaşmak istemektedir. Yıllar boyunca çölün derinliklerindeki antik kitaplardan bilgi biriktiren Nasus, kumların hükümdarı olarak bilinen ve ölümsüzlük peşinde koşan Shurima İmparatorluğu'nun eski günlerine dair sırları keşfeder. Her geçen gün daha da güçlenen Nasus, bilgeliğini ve deneyimini kullanan bir savaşçıya dönüşür.Nasus'un büyük hedefi, Shurima'nın yükselişini sağlamak ve evrenin dengesini korumaktır. Kahraman, kumlar arasında dolaşarak bilge bir önder ve korkulan bir savaşçı olmuştur. Savaşlarda düşmanlarını kontrol altına alarak gücünü gösterir ve efsanevi Siphoning Strike yeteneğiyle düşmanlarını darmadağın eder.Nasus, kum fırtınalarının ortasında yükselen bir efsane haline gelmiştir. Kendisine karşı çıkanlara karşı acımasız bir şekilde mücadele ederken, amacı Shurima'nın zaferine katkıda bulunmak ve evrenin güçlerini dengelemektir.")
                    .padding(.leading)
                    .padding(.trailing)
                    .multilineTextAlignment(.center)
                Spacer()
            } .padding()
                .sheet(isPresented: $show) {
                    SideMenuView()
                        .presentationDetents([.fraction(0.5), .large])
                        .frame(maxHeight: .infinity)
                        .background(Color(.systemBackground))
                    
                }
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
