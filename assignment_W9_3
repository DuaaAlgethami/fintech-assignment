from hashlib import sha256
import json
import time

class Block:
    def __init__(self, index, transactions, timestamp, previous_hash, nonce=0):
        self.index = index
        self.transactions = transactions
        self.timestamp = timestamp
        self.previous_hash = previous_hash
        self.nonce = nonce
    
    def compute_hash(self):
        block_string = json.dumps(self.__dict__, sort_keys=True)
        return sha256(block_string.encode()).hexdigest()
    
class Blockchain:
    difficulty = 2

    def __init__(self):
        self.unconfirmed_transactions = []
        self.chain = []
        self.create_genesis_block()

    def create_genesis_block(self):
        genesis_block = Block(index=0, transactions=[], timestamp=time.time(), previous_hash="0")
        genesis_block.hash = genesis_block.compute_hash()
        self.chain.append(genesis_block)
        
def get_last_block(self) -> Block:
    return self.chain[-1]

def proof_of_work(self, block:Block) -> str:
    computed_hash = block.compute_hash()
    while not computed_hash.startswith('0' * Blockchain.difficulty):
        block.nonce += 1
        computed_hash = block.compute_hash()
        return computed_hash

def is_valid_proof(self, block:Block, block_hash:str) -> bool:
    return block_hash.startswith('0' * self.difficulty) and block_hash == block.compute_hash()

def add_block(self, block:Block, proof:str) -> bool:
    last_block = self.last_block()
    last_block.hash
    
    if last_block.current_hash != block.previous_hash:
        return False
    if not is_valid_proof(block, proof):
        return False
    block.hash = proof
    self.chain.append(block)
    
    return True

def add_new_transaction(self, transaction:dict) -> None:
    self.unconfirmed_transactions.append(transaction)
    
def mine(self) -> int:
    if len(self.unconfirmed_transactions)<1:
        return -1
    
    last_block = self.get_last_block()
    self.unconfirmed_transactions.append(tx_1)
    
    new_block = Block(index=last_block.index+1,
                     transactions = self.unconfirmed_transactions,
                     timestamp=int(time.time()),
                     previous_hash=last_Block.hash)
    
    proof = self.proof_of_work(new_block)
    
    if not is_valid_proof(new_block,proof):
        return -1
