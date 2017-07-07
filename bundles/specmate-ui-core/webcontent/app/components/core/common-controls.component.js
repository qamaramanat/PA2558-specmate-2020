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
var confirmation_modal_service_1 = require('./forms/confirmation-modal.service');
var common_1 = require('@angular/common');
var specmate_data_service_1 = require('../../services/specmate-data.service');
var core_1 = require('@angular/core');
var editor_common_control_service_1 = require('../../services/editor-common-control.service');
var CommonControls = (function () {
    function CommonControls(dataService, commonControlService, location, modal) {
        this.dataService = dataService;
        this.commonControlService = commonControlService;
        this.location = location;
        this.modal = modal;
    }
    CommonControls.prototype.save = function () {
        this.dataService.commit("Save");
    };
    CommonControls.prototype.close = function () {
        var _this = this;
        if (this.dataService.hasCommits) {
            this.modal.open('You have unsaved changes. Do you want to discard them?')
                .then(function () { return _this.back(); })
                .catch(function () { });
        }
        else {
            this.back();
        }
    };
    CommonControls.prototype.back = function () {
        this.dataService.clearCommits();
        this.location.back();
    };
    Object.defineProperty(CommonControls.prototype, "isSaveEnabled", {
        get: function () {
            return this.dataService.hasCommits && this.commonControlService.isCurrentEditorValid;
        },
        enumerable: true,
        configurable: true
    });
    Object.defineProperty(CommonControls.prototype, "isEnabled", {
        get: function () {
            return this.commonControlService.showCommonControls;
        },
        enumerable: true,
        configurable: true
    });
    CommonControls = __decorate([
        core_1.Component({
            moduleId: module.id,
            selector: 'common-controls',
            templateUrl: 'common-controls.component.html',
            styleUrls: ['common-controls.component.css']
        }), 
        __metadata('design:paramtypes', [specmate_data_service_1.SpecmateDataService, editor_common_control_service_1.EditorCommonControlService, common_1.Location, confirmation_modal_service_1.ConfirmationModal])
    ], CommonControls);
    return CommonControls;
}());
exports.CommonControls = CommonControls;
//# sourceMappingURL=common-controls.component.js.map