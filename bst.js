var tree;

function setup() {
tree = new Tree;
tree.addValue(5)
tree.addValue(12)
tree.addValue(4)
tree.addValue(12)
tree.addValue(7)


console.log(tree)
tree.traverse();
}

function Tree() {
    this.root = null;
}

function Node(val) {
    this.value = val;
    this.left = null;
    this.right = null;
}

Tree.prototype.traverse = function() {
    this.root.visit();
}

Tree.prototype.search = function(val) {
    let searchedNode = this.root.search(val);
    if(searchedNode){
        console.log("searched node", searchedNode)
    }
    
}

Node.prototype.search = function(val) {
    if (this.value == val) {
        console.log("searched node", this)
        return this;
    } else if (val < this.value && this.left != null) {
        this.left.search(val);
    } else if (val > this.value && this.right != null) {
        this.right.search(val);
    }
    return null;
}

Node.prototype.visit = function() {
    if (this.left != null) {
        this.left.visit();
    }
    console.log(this.value);
    if (this.right != null) {
        this.right.visit();
    }
}

Tree.prototype.addValue = function(val) {
    var n = new Node(val);
    if (this.root == null) {
        this.root = n;
    } else {
        this.root.addNode(n);
    }
}

Tree.prototype.remove = function(val) {
    this.root = removeNode(this.root, val); 
}

function findMinNode(node) 
{ 
    if(node.left === null) 
        return node; 
    else
        return this.findMinNode(node.left); 
} 


function removeNode(node, key) 
{ 
    if(node === null) 
        return null; 

    else if(key < node.value) 
    { 
        node.left = this.removeNode(node.left, key); 
        return node; 
    } 
  
    else if(key > node.value) 
    { 
        node.right = this.removeNode(node.right, key); 
        return node; 
    } 
  
    else
    { 
        if(node.left === null && node.right === null) 
        { 
            node = null; 
            return node; 
        } 

        if(node.left === null) 
        { 
            node = node.right; 
            return node; 
        } 
          
        else if(node.right === null) 
        { 
            node = node.left; 
            return node; 
        } 
        var aux = this.findMinNode(node.right); 
        node.value = aux.value; 
  
        node.right = this.removeNode(node.right, aux.value); 
        return node; 
    } 
  
} 



Node.prototype.addNode = function(n) {
    if(n.value < this.value) {
        if (this.left == null) {
            this.left = n;
        } else {
            this.left.addNode(n);
        }
    } else if(n.value > this.value) {
       if (this.right == null) {
           this.right = n;
       } else {
           this.right.addNode(n);
       }
    }
}

