$(document).ready(function () {
    function AppViewModel() {
        var self = this;

        self.people = ko.observableArray([
            {
                firstName: 'James',
                lastName: 'Bond',
                position: 'Spy'
            },
            {
                firstName: 'Charles',
                lastName: 'Bond',
                position: 'Spy'
            },
            {
                firstName: 'Denise',
                lastName: 'Bond',
                position: 'Spy'
            }
        ]);

        self.addPerson = function () {
            self.people.push({ name: "New at " + new Date() });
        };

        self.removePerson = function () {
            self.people.remove(this);
        }
    }

    ko.applyBindings(new AppViewModel());
});