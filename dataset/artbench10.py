from torchvision.datasets import CIFAR10
class artCIFAR10(CIFAR10):
    """artCIFAR10
    """

    base_folder = "artcifar-10-batches-py"
    url = "https://artcifar.s3.us-east-2.amazonaws.com/artcifar-10-python.tar.gz"
    filename = "artcifar-10-python.tar.gz"
    tgz_md5 = "5243d9bfaee6f7aabe3c061c264d5baf"
    train_list = [
        ["data_batch_1", "c2e02a78dcea81fe6fead5f1540e542f"],
        ["data_batch_2", "1102a4dcf41d4dd63e20c10691193448"],
        ["data_batch_3", "177fc43579af15ecc80eb506953ec26f"],
        ["data_batch_4", "566b2a02ccfbafa026fbb2bcec856ff6"],
        ["data_batch_5", "faa6a572469542010a1c8a2a9a7bf436"],
    ]

    test_list = [
        ["test_batch", "fa44530c8b8158467e00899609c19e52"],
    ]
    meta = {
        "filename": "meta",
        "key": "styles",
        "md5": "5bdcafa7398aa6b75d569baaec5cd4aa",
    }