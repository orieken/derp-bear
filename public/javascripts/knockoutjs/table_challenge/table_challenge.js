/**
 * Created by orieken on 1/20/14.
 */
$(document).ready(function () {
    function AppViewModel() {
        self.cars = ko.observableArray([
            { time: '01:13.8', make: 'Pagani', model: 'Huayra', track: '',season: '19', episode: '01'},
            { time: '01:14.3', make: 'BAC', model: 'Mono', track: '',season: '20', episode: '02'},
            { time: '01:15.1', make: 'Ariel', model: 'Atom V8 500', track: 'moist',season: '16', episode: '01'},
            { time:'01:16.2', make:'McLaren', model:'MP4-12C', track: '',season: '17', episode: '03'},
            { time:'01:16.5',make: 'Lamborghini', model: 'Aventador LP700-4', track: '',season: '17', episode: '04'},
            { time:'01:16.8', make: 'Bugatti', model: 'Veyron Super Sport', track: '',season: 15, episode: '05'},
            { time: '01:17.1', make:'Gumpert', model:'Apollo S', track: '',season: '11',  episode: '06'},
            { time: '01:17.3', make: 'Ascari', model: 'A10', track: '', season:'10', episode: '09'}
        ]);

        self.headings = ko.observableArray([
            {columnHeading: 'Time'},
            {columnHeading: 'Make'},
            {columnHeading: 'Model'},
            {columnHeading: 'Track Conditions'},
            {columnHeading: 'Season'},
            {columnHeading: 'Episode'}
        ])
    }

    ko.applyBindings(new AppViewModel());
});