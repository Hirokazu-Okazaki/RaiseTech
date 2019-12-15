module CommunicationHelper

    def GreetingMethod
        greeting = "HelloWorld"
        return greeting
    end

    def GetTotalNum(startNumber, endNumber)
        totalValue = 0
        for value in (startNumber..endNumber)
            totalValue += value
        end
        return totalValue
    end

    def GetDisplayValueForBool(value)
        begin
            displayValue = ""
            if value == 1
                displayValue = "真"
            elsif value == 0
                displayValue = "偽"
            else
                raise StandardError.new("入力値エラー")
            end
        rescue => e
            displayValue = e.message
        end
        return displayValue
    end

    def GetArraySample
        array = [
            1,
            2.3,
            "str",
            1..100,
            true,
            [1,2,3,4,5],
            {1=>2, 3=>4},
            Communication,
            WorkPlaceCommunication
        ]
        return array
    end

    def ReturnGreetingNormal(greeting)
        communication = Communication.new
        return communication.greet(greeting)
    end

    def ReturnGreetingWorkPlace(greeting)
        communication = WorkPlaceCommunication.new
        return communication.greet(greeting)
    end

    class Communication
        def greet(greeting)
            returnGreeting = "無言"
            if IsWorkPlace()
                # 職場でもHello以外挨拶を返さない(酷い)
                if greeting == "Hello"
                    returnGreeting = "Hello"
                end
            else
                # 職場以外は挨拶不要(酷い)
            end
            return returnGreeting
        end

        def IsWorkPlace()
            self.is_a?(WorkPlaceCommunication)
        end
    end

    class WorkPlaceCommunication < Communication
    end
end
