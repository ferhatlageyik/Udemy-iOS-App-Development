/*:
 ## Uygulama - Similar Workouts
 
 İki gereksinimle `Workout` adında bir protokol oluşturun: her ikisi de `Double` türünden olan `distance` ve `time` adı verilen ayarlanabilir iki özellik oluşturun.
 */

import Darwin
protocol Workout{
    var distance: Double { get set}
    var time: Double {get set}
}

/*:
 İki sınıf oluşturun: `RunningWorkout` ve` SwimmingWorkout`. Her ikisi de `Workout` protokolüne uygun olmalıdır. Nesnelerinizden her birinin özelliğini oluşturun ve bir `RunningWorkout` nesnesini ve ardından bir `SwimmingWorkout` nesnesini ileterek iki kez `simpleWorkoutDescription` fonksiyonunu çağırın.
 */
func simpleWorkoutDescription(workout: Workout) {
    print("You went \(workout.distance) meters in \(workout.time) seconds.")
}

class RunnigWorkOut: Workout{
    var distance: Double
    var time: Double
    
    init(distance: Double, time: Double){
        self.distance = distance
        self.time = time
    }
}

class SwimmingWorkOut: Workout{
    var distance: Double
    var time: Double
    
    init(distance: Double, time: Double){
        self.distance = distance
        self.time = time
    }
}

let firstActivity = RunnigWorkOut(distance: 3680, time: 37)
let secondActivity = SwimmingWorkOut(distance: 200, time: 23.4)

simpleWorkoutDescription(workout: firstActivity)
simpleWorkoutDescription(workout: secondActivity)

// Gelinen bu noktada gerçekten hayretler içerisindeyim. Bir protokolümüz var ve biz bu protokolü conform ederek classlar oluşturduk. dışarıda bir fonksiyonumuz var ve bu fonksiyonumuz da aynı protokolle iş yapabiliyor. classların içinde tanımlı olmamasına rağmen direkt protokol üzerinden haberleşti gibi hissettim. yani fonksiyon parametre olarak protokolü aldı ve bu protokolle iş yapan kim varsa gelebilir dedi gibi bir şey. işte sanırım yatay mimari dedikleri bu olsa gerek. ya da saçmalıyorum bilmiyorum.

//: [Önceki](@previous)  |  sayfa 4 / 5  |  [Sonraki: Uygulama - Heart Rate Delegate](@next)
