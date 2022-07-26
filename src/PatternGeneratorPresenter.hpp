#pragma once

#include <QObject>
#include <QtQml/qqmlregistration.h>
#include "PatternGenerator.hpp"

class PatternGeneratorPresenter: public QObject
{
  Q_OBJECT
  QML_ELEMENT

public:
  PatternGeneratorPresenter(QObject* parent = nullptr);

public slots:
  void generate();

signals:
  void newPatternAvailable();

private:
  PatternGenerator _patternGenerator;
};
