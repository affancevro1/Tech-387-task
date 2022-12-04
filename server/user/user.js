const mongoose = require('mongoose');


const userSchema = mongoose.Schema({

    email: {
        type:String,
        trim: true,
        validate: {
            validator:(value) => {
                const re = /^("(?:[!#-\[\]-\u{10FFFF}]|\\[\t -\u{10FFFF}])*"|[!#-'*+\-/-9=?A-Z\^-\u{10FFFF}](?:\.?[!#-'*+\-/-9=?A-Z\^-\u{10FFFF}])*)@([!#-'*+\-/-9=?A-Z\^-\u{10FFFF}](?:\.?[!#-'*+\-/-9=?A-Z\^-\u{10FFFF}])*|\[[!-Z\^-\u{10FFFF}]*\])$/u
                return value.match(re)
            },
            message: 'Please enter a valid email adress'
        }
    },
        password:{
            required: true,
            type: String,
            validate: {
                validator:(value) => {
                    return value.length > 6;
                },
                message: 'Please enter a valid email adress'
            }
        },
        type: {
            type:String,
            default:'user',
        },
        name: {
            required: true,
            type: String,
            trim: true
        }


})

const User = mongoose.model("User", userSchema);
module.exports = User;