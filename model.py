from sklearn.linear_model import Perceptron
import pickle

X = [[0, 0], [1, 1]]
y = [0, 1]

model = Perceptron()
model.fit(X, y)

with open('perceptron_model.pkl', 'wb') as f:
    pickle.dump(model, f)
