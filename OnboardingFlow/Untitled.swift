import SwiftUI

struct Untitled: View {
    var body: some View {
        ScrollView {
            HStack (alignment: .top){
                Image(systemName: "cloud.fill")
                Text("WEATHER")
                    
            }
            .font(Font.largeTitle)
            //.bold()
            .foregroundStyle(Color.white)
            .padding()
            .background(Color.blue, in: RoundedRectangle(cornerRadius: 20))
            .padding()
            .padding()
            HStack{
                DayForecast(day: "Mon", high: 35, low:27, isRainy: false)
                DayForecast(day: "Tue", high: 24, low:9, isRainy: true)
            }
            .padding()
            HStack{
                DayForecast(day: "Wen", high: 22, low:7, isRainy: true)
                DayForecast(day: "Thu", high: 27, low:23, isRainy: false)
            }
            HStack{
                DayForecast(day: "Fri", high: 29, low:22, isRainy: false)
                DayForecast(day: "Sat", high: 28, low:24, isRainy: false)
            }
            .padding()
            HStack{
                DayForecast(day: "Sun", high: 22, low:7, isRainy: true)
                DayForecast(day: "Mon", high: 19, low:6, isRainy: true)
            }
            Text("No More Data")
                .font(Font.headline)
                .padding()
        }
    }
}


#Preview {
    Untitled()
}

struct DayForecast: View {
    let day: String
    let high: Int
    let low: Int
    let isRainy: Bool
    
    var iconName: String{
        if isRainy{
            return "cloud.rain.fill"
        } else {
            return "sun.max.fill"
        }
    }
    var iconColor: Color {
            if isRainy {
                return Color.blue
            } else {
                return Color.yellow
            }
        }
    var tempcolorh: Color {
        if high > 30 {
            return Color.red
        } else {
            return Color.black
        }
    }
    var tempcolorl: Color {
        if low < 10 {
            return Color.blue
        } else {
            return Color.black
        }
    }
    var body: some View {
        VStack {
            Text(day)
                .font(Font.title)
            Image(systemName: iconName)
                .foregroundStyle(iconColor)
                .font(Font.largeTitle)
            Text("High: \(high)°C")
                .font(Font.headline)
                .foregroundStyle(tempcolorh)
                .padding()
            Text("Low: \(low)°C")
                .font(Font.headline)
                .foregroundStyle(tempcolorl)
        }
        .padding()
    }
}
