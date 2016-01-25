function Elimina(obj) {
    smoke.confirm('Attenzione! La voce selezionata verra eliminata in modo permanente,si intende procedere?', function (e) {
        if (e) {
            javascript: __doPostBack(obj, '');
        } else {
            return false;
        }
    }, { ok: "Conferma", cancel: "Annulla" });
    return false;
}

function OperazioneGenerica(msg, obj) {
    smoke.confirm(msg, function (e) {
        if (e) {
            javascript: __doPostBack(obj, '');
        } else {
            return false;
        }
    }, { ok: "Conferma", cancel: "Annulla" });
    return false;
}

function MessaggioGenerico(msg) {
    smoke.alert(msg, function (e) {
        return false;
    });
    return false;
}

function openModal(name) {
    $(name).modal('show');
}

function closeModal(name) {
    $(name).removeClass("in");
    $(".modal-backdrop").remove();
    $(name).modal('hide');
}

function afterModal(name) {
    $(".modal-backdrop").remove();
    $(name).modal('show');
}

function PMFailure(error) {
    alert(error._message);
}
function PMSuccess() {
    //alert("Evviva");
}

function Trim() {
    return this.replace(/\s+$|^\s+/g, "");
}

function LTrim() {
    return this.replace(/^\s+/, "");
}

function RTrim() {
    return this.replace(/\s+$/, "");
}

String.prototype.Trim = Trim;
String.prototype.RTrim = RTrim;
String.prototype.LTrim = LTrim;


