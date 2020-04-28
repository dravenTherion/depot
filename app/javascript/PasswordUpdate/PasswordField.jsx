import React from 'react'

class PasswordField extends React.Component {

    constructor(props) {
        super(props);
    }

    render() {
        return (

            <div className="field">
                <label htmlFor={this.props.id + "_password"} style={this.props.style}>{this.props.label}</label>
                <input  id={this.props.id} 
                        size={this.props.size} 
                        type="password" 
                        name={this.props.col + '[' + this.props.value + ']'}
                        onChange={this.props.onChange} />
            </div>

        );
    }

}

export default PasswordField
