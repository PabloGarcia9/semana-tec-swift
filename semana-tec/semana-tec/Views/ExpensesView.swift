//
//  ExpensesView.swift
//  semana-tec
//
//  Created by Alumno on 21/03/24.
//

import SwiftUICharts
import SwiftUI

let colors = [
    ".blue",
    ".red",
    ".green",
    ".orange",
    ".purple"
]

func returnDouble(expenses: [expense], project: project) -> [Double]{
    var tempArr: [Double] = []
    
    for expense in expenses{
        if(expense.idProject == project.id){
            tempArr.append(expense.value)
        }
    }
    return tempArr
}

struct ExpensesView: View {
    var project: project
    var expenseVM = ExpenseViewModel()
    
    
    
    var body: some View {
        VStack{
            PieChartView(data: returnDouble(expenses: expenseVM.cost, project: project), title: "Gastos por persona", dropShadow: false)
            List{
                ForEach(expenseVM.cost){ item in
                    if(item.idProject == project.id){
                        HStack{
                            Text(item.name)
                            Spacer()
                            Text("$ " + String(item.value))
                        }
                        .padding(0)
                    }
                }
            }
        }
        
        
    }
}

#Preview {
    ExpensesView(project: project(id: 1, name: "", people: [], description: "", backgroundColor: "", imageURL: ""))
}
