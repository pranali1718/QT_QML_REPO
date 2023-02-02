/****************************************************************************
** Meta object code from reading C++ file 'cppworker.h'
**
** Created by: The Qt Meta Object Compiler version 68 (Qt 6.2.4)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include <memory>
#include "../2_Context_property_calling_cpp_from_QML/cppworker.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'cppworker.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 68
#error "This file was generated using the moc from 6.2.4. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_cppworker_t {
    const uint offsetsAndSize[14];
    char stringdata0[66];
};
#define QT_MOC_LITERAL(ofs, len) \
    uint(offsetof(qt_meta_stringdata_cppworker_t, stringdata0) + ofs), len 
static const qt_meta_stringdata_cppworker_t qt_meta_stringdata_cppworker = {
    {
QT_MOC_LITERAL(0, 9), // "cppworker"
QT_MOC_LITERAL(10, 7), // "cppslot"
QT_MOC_LITERAL(18, 0), // ""
QT_MOC_LITERAL(19, 13), // "regularmethod"
QT_MOC_LITERAL(33, 23), // "regularmethodwithreturn"
QT_MOC_LITERAL(57, 4), // "name"
QT_MOC_LITERAL(62, 3) // "age"

    },
    "cppworker\0cppslot\0\0regularmethod\0"
    "regularmethodwithreturn\0name\0age"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_cppworker[] = {

 // content:
      10,       // revision
       0,       // classname
       0,    0, // classinfo
       3,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags, initial metatype offsets
       1,    0,   32,    2, 0x0a,    1 /* Public */,

 // methods: name, argc, parameters, tag, flags, initial metatype offsets
       3,    0,   33,    2, 0x02,    2 /* Public */,
       4,    2,   34,    2, 0x02,    3 /* Public */,

 // slots: parameters
    QMetaType::Void,

 // methods: parameters
    QMetaType::Void,
    QMetaType::QString, QMetaType::QString, QMetaType::Int,    5,    6,

       0        // eod
};

void cppworker::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<cppworker *>(_o);
        (void)_t;
        switch (_id) {
        case 0: _t->cppslot(); break;
        case 1: _t->regularmethod(); break;
        case 2: { QString _r = _t->regularmethodwithreturn((*reinterpret_cast< std::add_pointer_t<QString>>(_a[1])),(*reinterpret_cast< std::add_pointer_t<int>>(_a[2])));
            if (_a[0]) *reinterpret_cast< QString*>(_a[0]) = std::move(_r); }  break;
        default: ;
        }
    }
}

const QMetaObject cppworker::staticMetaObject = { {
    QMetaObject::SuperData::link<QObject::staticMetaObject>(),
    qt_meta_stringdata_cppworker.offsetsAndSize,
    qt_meta_data_cppworker,
    qt_static_metacall,
    nullptr,
qt_incomplete_metaTypeArray<qt_meta_stringdata_cppworker_t
, QtPrivate::TypeAndForceComplete<cppworker, std::true_type>
, QtPrivate::TypeAndForceComplete<void, std::false_type>
, QtPrivate::TypeAndForceComplete<void, std::false_type>, QtPrivate::TypeAndForceComplete<QString, std::false_type>, QtPrivate::TypeAndForceComplete<QString, std::false_type>, QtPrivate::TypeAndForceComplete<int, std::false_type>

>,
    nullptr
} };


const QMetaObject *cppworker::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *cppworker::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_cppworker.stringdata0))
        return static_cast<void*>(this);
    return QObject::qt_metacast(_clname);
}

int cppworker::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 3)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 3;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 3)
            *reinterpret_cast<QMetaType *>(_a[0]) = QMetaType();
        _id -= 3;
    }
    return _id;
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
