import React from 'react'

import PasswordField from './PasswordField';

class PasswordUpdate extends React.Component {

    constructor(props) {
        super(props);
        this.state = { hasInput: false };

        this.handleChange = this.handleChange.bind(this);
    }

    handleChange(el){

        if(el.target.value.trim().length > 0)
            this.setState({hasInput: true})
        else
            this.setState({hasInput: false})

    }
    
    render() {

        let field = '';

        if(this.state.hasInput)
            field = <PasswordField label="Admin password required to effect change" 
                                    id="admin_password" 
                                    col = "user"
                                    value = "admin_password"
                                    size="40" 
                                    style={{color: "#157ce2", fontWeight: "bold"}}/>
 
        return (
            <div>
                <PasswordField label="User Password" id="user_password" col="user" value="password" size="40" onChange={(e) => {this.handleChange(e)}}/>
                {field}
            </div>
        );
    }

}

export default PasswordUpdate
