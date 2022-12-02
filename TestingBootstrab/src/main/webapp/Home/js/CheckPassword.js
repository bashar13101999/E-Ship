

    var a1 = true;
    var a2 = true;
    var a3 = true;
    var a4 = true;
    var a5 = true;
    document.getElementById("registerButton").style.disabled = true;
    function validate()
    {
        const password = document.getElementById('userPassword');
        const upper = document.getElementById('upper')
        const lower = document.getElementById('lower')
        const special = document.getElementById('special')
        const number = document.getElementById('number')
        const length = document.getElementById('length')


        if(password.value.match(/[0-9]/))
    {
        number.style.color = 'green'
        a1 = true
    }
        else
    {
        number.style.color = 'red'
        a1 = false
    }
        if(password.value.match(/[A-Z]/))
    {
        upper.style.color = 'green'
        a2 = true
    }
        else
    {
        upper.style.color = 'red'
        a2 = false
    }

        if(password.value.match(/[a-z]/))
    {
        lower.style.color = 'green'
        a3 = true
    }
        else
    {
        lower.style.color = 'red'
        a3 = false
    }

        if(password.value.match(/[~/!/@/#/$/%/"/&/*/(/)/?/*/+/-/./</>{/}]/))
    {
        special.style.color = 'green'
        a4 = true
    }
        else
    {
        special.style.color = 'red'
        a4 = false
    }
        if(password.value.length >= 8)
    {
        length.style.color = 'green'
        a5 = true
    }
        else
    {
        length.style.color = 'red'
        a5 = false
    }
        document.getElementById("registerButton").style.disabled = true;
        if(a1 == true && a2 == true && a3 == true && a3 == true && a5 == true)
    {
        document.getElementById("registerButton").disabled = false;
    }

        // function confirm()
        // {
        //     var password = document.getElementById('password');
        //     var confirm_password = document.getElementById('userConfirmPassword');
        //     if (password.value === confirm_password.value)
        //     {
        //         document.getElementById('number').style.display = 'none'
        //         document.getElementById('upper').style.display = 'none'
        //         document.getElementById('lower').style.display = 'none'
        //         document.getElementById('special').style.display = 'none'
        //         document.getElementById('length').style.display = 'none'
        //     }
        //
        //         else{
        //         document.getElementById('number').style.display = 'block'
        //         document.getElementById('upper').style.display = 'block'
        //         document.getElementById('lower').style.display = 'block'
        //         document.getElementById('special').style.display = 'block'
        //         document.getElementById('length').style.display = 'block'
        //     }
        // }
    }
