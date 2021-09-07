import unittest


class TestSum(unittest.TestCase):

    def test_sum(self):
        self.assertEqual(sum([2, 3, 5]), 10, "Deberia ser 10")

if __name__ == '__main__':
    unittest.main()
