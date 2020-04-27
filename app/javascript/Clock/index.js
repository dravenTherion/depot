import React from 'react'

class Clock extends React.Component {

    constructor(props) {
        super(props);
        this.state = { date: null };
    }

    componentDidMount(){

        const getDate = ()=>{
            const   today = new Date();
            const   date = today.toLocaleDateString('en-US', {month: 'short', year: 'numeric', day: '2-digit'}),
                    time = today.toLocaleTimeString(),
                    fulldate = date + "\n" + time;

            this.setState({date: fulldate});
        }

        setInterval(getDate, 1000);

        getDate();

    }

    render() {
        return (
            <span>{this.state.date}</span>
        );
    }

}

export default Clock
