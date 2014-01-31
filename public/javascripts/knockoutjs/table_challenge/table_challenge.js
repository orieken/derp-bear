/**
 * Created by orieken on 1/20/14.
 */
$(document).ready(function () {
    function AppViewModel() {
        self.cars = ko.observableArray([
            { time: '01:13.8', make: 'Pagani', model: 'Huayra', track: '', season: '19', episode: '1'},
            { time: '01:14.3', make: 'BAC', model: 'Mono', track: '', season: '20', episode: '2'},
            { time: '01:15.1', make: 'Ariel', model: 'Atom V8 500', track: 'moist', season: '16', episode: '1'},
            { time: '01:16.2', make: 'McLaren', model: 'MP4-12C', track: '', season: '17', episode: '3'},
            { time: '01:16.5', make: 'Lamborghini', model: 'Aventador LP700-4', track: '', season: '17', episode: '4'},
            { time: '01:16.8', make: 'Bugatti', model: 'Veyron Super Sport', track: '', season: '15', episode: '5'},
            { time: '01:17.1', make: 'Gumpert', model: 'Apollo S', track: '', season: '11', episode: '6'},
            { time: '01:17.3', make: 'Ascari', model: 'A10', track: '', season: '10', episode: '9'},
            { time: '01:17.6', make: 'Koenigsegg', model: 'CCX with Top Gear Wing', track: '', season: '8', episode: '4'},
            { time: '01:17.7', make: 'Noble', model: 'M600', track: 'cold', season: '14', episode: '5'},
            { time: '01:17.8', make: 'Nissan', model: 'GT-R 2012', track: '', season: '17', episode: '4'},
            { time: '01:17.8', make: 'Pagani', model: 'Zonda Roadster F Clubsport Version', track: '', season: '12', episode: '4'},
            { time: '01:17.9', make: 'Caterham', model: 'Seven Superlight R500', track: 'cold', season: '12', episode: '6'}
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