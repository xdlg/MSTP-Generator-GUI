#include "PatternGeneratorPresenter.hpp"
#include <QDebug>
#include "Scale.hpp"

PatternGeneratorPresenter::PatternGeneratorPresenter(QObject* parent)
  : QObject(parent), _patternGenerator(640, 480)
{
  _patternGenerator._scales.push_back(Scale(50, 100, 0.04));
  _patternGenerator._scales.push_back(Scale(25, 50, 0.03));
  _patternGenerator._scales.push_back(Scale(12, 25, 0.02));
}

void PatternGeneratorPresenter::generate()
{
  _patternGenerator.generate();
}
