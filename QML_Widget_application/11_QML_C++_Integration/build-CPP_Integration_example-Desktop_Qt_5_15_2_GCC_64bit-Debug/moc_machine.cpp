/****************************************************************************
** Meta object code from reading C++ file 'machine.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.15.2)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include <memory>
#include "../CPP_Integration_example/machine.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'machine.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.15.2. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_Machine_t {
    QByteArrayData data[13];
    char stringdata0[90];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_Machine_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_Machine_t qt_meta_stringdata_Machine = {
    {
QT_MOC_LITERAL(0, 0, 7), // "Machine"
QT_MOC_LITERAL(1, 8, 8), // "progress"
QT_MOC_LITERAL(2, 17, 0), // ""
QT_MOC_LITERAL(3, 18, 7), // "started"
QT_MOC_LITERAL(4, 26, 7), // "stopped"
QT_MOC_LITERAL(5, 34, 6), // "paused"
QT_MOC_LITERAL(6, 41, 7), // "resumed"
QT_MOC_LITERAL(7, 49, 5), // "start"
QT_MOC_LITERAL(8, 55, 4), // "stop"
QT_MOC_LITERAL(9, 60, 5), // "pause"
QT_MOC_LITERAL(10, 66, 6), // "resume"
QT_MOC_LITERAL(11, 73, 7), // "timeout"
QT_MOC_LITERAL(12, 81, 8) // "workload"

    },
    "Machine\0progress\0\0started\0stopped\0"
    "paused\0resumed\0start\0stop\0pause\0resume\0"
    "timeout\0workload"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_Machine[] = {

 // content:
       8,       // revision
       0,       // classname
       0,    0, // classinfo
      10,   14, // methods
       1,   74, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       5,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    0,   64,    2, 0x06 /* Public */,
       3,    0,   65,    2, 0x06 /* Public */,
       4,    0,   66,    2, 0x06 /* Public */,
       5,    0,   67,    2, 0x06 /* Public */,
       6,    0,   68,    2, 0x06 /* Public */,

 // slots: name, argc, parameters, tag, flags
       7,    0,   69,    2, 0x0a /* Public */,
       8,    0,   70,    2, 0x0a /* Public */,
       9,    0,   71,    2, 0x0a /* Public */,
      10,    0,   72,    2, 0x0a /* Public */,
      11,    0,   73,    2, 0x08 /* Private */,

 // signals: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,

 // properties: name, type, flags
      12, QMetaType::Int, 0x00495003,

 // properties: notify_signal_id
       0,

       0        // eod
};

void Machine::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<Machine *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->progress(); break;
        case 1: _t->started(); break;
        case 2: _t->stopped(); break;
        case 3: _t->paused(); break;
        case 4: _t->resumed(); break;
        case 5: _t->start(); break;
        case 6: _t->stop(); break;
        case 7: _t->pause(); break;
        case 8: _t->resume(); break;
        case 9: _t->timeout(); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        {
            using _t = void (Machine::*)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&Machine::progress)) {
                *result = 0;
                return;
            }
        }
        {
            using _t = void (Machine::*)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&Machine::started)) {
                *result = 1;
                return;
            }
        }
        {
            using _t = void (Machine::*)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&Machine::stopped)) {
                *result = 2;
                return;
            }
        }
        {
            using _t = void (Machine::*)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&Machine::paused)) {
                *result = 3;
                return;
            }
        }
        {
            using _t = void (Machine::*)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&Machine::resumed)) {
                *result = 4;
                return;
            }
        }
    }
#ifndef QT_NO_PROPERTIES
    else if (_c == QMetaObject::ReadProperty) {
        auto *_t = static_cast<Machine *>(_o);
        Q_UNUSED(_t)
        void *_v = _a[0];
        switch (_id) {
        case 0: *reinterpret_cast< int*>(_v) = _t->value(); break;
        default: break;
        }
    } else if (_c == QMetaObject::WriteProperty) {
        auto *_t = static_cast<Machine *>(_o);
        Q_UNUSED(_t)
        void *_v = _a[0];
        switch (_id) {
        case 0: _t->setValue(*reinterpret_cast< int*>(_v)); break;
        default: break;
        }
    } else if (_c == QMetaObject::ResetProperty) {
    }
#endif // QT_NO_PROPERTIES
    Q_UNUSED(_a);
}

QT_INIT_METAOBJECT const QMetaObject Machine::staticMetaObject = { {
    QMetaObject::SuperData::link<QObject::staticMetaObject>(),
    qt_meta_stringdata_Machine.data,
    qt_meta_data_Machine,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *Machine::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *Machine::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_Machine.stringdata0))
        return static_cast<void*>(this);
    return QObject::qt_metacast(_clname);
}

int Machine::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 10)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 10;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 10)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 10;
    }
#ifndef QT_NO_PROPERTIES
    else if (_c == QMetaObject::ReadProperty || _c == QMetaObject::WriteProperty
            || _c == QMetaObject::ResetProperty || _c == QMetaObject::RegisterPropertyMetaType) {
        qt_static_metacall(this, _c, _id, _a);
        _id -= 1;
    } else if (_c == QMetaObject::QueryPropertyDesignable) {
        _id -= 1;
    } else if (_c == QMetaObject::QueryPropertyScriptable) {
        _id -= 1;
    } else if (_c == QMetaObject::QueryPropertyStored) {
        _id -= 1;
    } else if (_c == QMetaObject::QueryPropertyEditable) {
        _id -= 1;
    } else if (_c == QMetaObject::QueryPropertyUser) {
        _id -= 1;
    }
#endif // QT_NO_PROPERTIES
    return _id;
}

// SIGNAL 0
void Machine::progress()
{
    QMetaObject::activate(this, &staticMetaObject, 0, nullptr);
}

// SIGNAL 1
void Machine::started()
{
    QMetaObject::activate(this, &staticMetaObject, 1, nullptr);
}

// SIGNAL 2
void Machine::stopped()
{
    QMetaObject::activate(this, &staticMetaObject, 2, nullptr);
}

// SIGNAL 3
void Machine::paused()
{
    QMetaObject::activate(this, &staticMetaObject, 3, nullptr);
}

// SIGNAL 4
void Machine::resumed()
{
    QMetaObject::activate(this, &staticMetaObject, 4, nullptr);
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
