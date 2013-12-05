$(document).ready(function () {
    function AppViewModel() {
        var self = this;

        var fname = ["Olivia","Charles","James","Walter","Peter"];
        var pickFirstName = function () {
            return fname[Math.floor(Math.random() * 5)];
        };
        var lname = ["Bond","Dawson","Bishop","Sanchez","Francis"];
        var pickLastName = function () {
            return lname[Math.floor(Math.random() * 5)];
        };
        var positions = ["Spy","Teacher","Villan","Manager","Student"];
        var pickPosition = function () {
            return positions[Math.floor(Math.random() * 5)];
        };

        self.people = ko.observableArray([
            {
                firstName: 'James',
                lastName: 'Bond',
                position: 'Spy'
            },
            {
                firstName: 'Charles',
                lastName: 'Bond',
                position: 'Manager'
            },
            {
                firstName: 'Denise',
                lastName: 'Bond',
                position: 'Teacher'
            }
        ]);

        self.addPerson = function () {
            self.people.push({
                firstName: pickFirstName(),
                lastName: pickLastName(),
                position:  pickPosition()
            });
        };

        self.removePerson = function() {
            self.people.remove(this);
        }
    }

    ko.applyBindings(new AppViewModel());
});