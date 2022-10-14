import logging
from time import time

from sklearn.datasets import make_classification
from sklearn.linear_model import LogisticRegression


start_time = time()
X, y = make_classification(n_samples=1000000, n_features=100, n_classes=2)

lr_clf = LogisticRegression()

lr_clf.fit(X, y)

training_time = time() - start_time

print(f"Training time: {training_time}")

logging.info(f"Training time: {training_time}")
