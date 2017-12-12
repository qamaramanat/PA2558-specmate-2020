"use strict";
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};
Object.defineProperty(exports, "__esModule", { value: true });
var core_1 = require("@angular/core");
var TestCase_1 = require("../../../../../../../model/TestCase");
var type_1 = require("../../../../../../../util/type");
var ParameterAssignment_1 = require("../../../../../../../model/ParameterAssignment");
var TestCaseComponentBase = /** @class */ (function () {
    /** constructor */
    function TestCaseComponentBase(dataService) {
        this.dataService = dataService;
    }
    Object.defineProperty(TestCaseComponentBase.prototype, "testCase", {
        get: function () {
            return this._testCase;
        },
        /** The test case to display */
        set: function (testCase) {
            this._testCase = testCase;
        },
        enumerable: true,
        configurable: true
    });
    Object.defineProperty(TestCaseComponentBase.prototype, "isVisible", {
        get: function () {
            return this.testCase && type_1.Type.is(this.testCase, TestCase_1.TestCase);
        },
        enumerable: true,
        configurable: true
    });
    TestCaseComponentBase.prototype.ngOnInit = function () {
        this.loadContents(true);
    };
    /** We initialize the assignments here. */
    TestCaseComponentBase.prototype.loadContents = function (virtual) {
        var _this = this;
        if (!type_1.Type.is(this.testCase, TestCase_1.TestCase)) {
            return;
        }
        this.dataService.readContents(this.testCase.url, virtual).then(function (contents) {
            if (!type_1.Type.is(_this.testCase, TestCase_1.TestCase) || !contents || contents.length === 0) {
                return;
            }
            _this.contents = contents;
        });
    };
    Object.defineProperty(TestCaseComponentBase.prototype, "assignments", {
        get: function () {
            if (!this.contents) {
                return undefined;
            }
            return this.contents
                .filter(function (element) { return type_1.Type.is(element, ParameterAssignment_1.ParameterAssignment); })
                .map(function (element) { return element; });
        },
        enumerable: true,
        configurable: true
    });
    TestCaseComponentBase.prototype.getAssignment = function (testParameter) {
        if (!this.assignments) {
            return undefined;
        }
        return this.assignments.find(function (paramAssignment) { return paramAssignment.parameter.url === testParameter.url; });
    };
    __decorate([
        core_1.Input(),
        __metadata("design:type", TestCase_1.TestCase),
        __metadata("design:paramtypes", [TestCase_1.TestCase])
    ], TestCaseComponentBase.prototype, "testCase", null);
    __decorate([
        core_1.Input(),
        __metadata("design:type", Array)
    ], TestCaseComponentBase.prototype, "inputParameters", void 0);
    __decorate([
        core_1.Input(),
        __metadata("design:type", Array)
    ], TestCaseComponentBase.prototype, "outputParameters", void 0);
    return TestCaseComponentBase;
}());
exports.TestCaseComponentBase = TestCaseComponentBase;
//# sourceMappingURL=test-case-component-base.js.map