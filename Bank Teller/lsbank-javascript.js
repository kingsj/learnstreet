// Bank Teller Project
function addAccount(name, password, accounts){
    // Create a new account and return its name. Password is the supplied PIN of the account returned.
    // Also establish an account balance.
    //WRITE YOUR addAccount METHOD HERE
    accounts={'name':name,'password':password,'balance':0}
    return accounts
}

function getBalance(accounts){
    return accounts['balance']    
}

function doDeposit(accounts, amount){
    // Add amount to the supplied account (called accounts).
    //WRITE YOUR doDeposit METHOD HERE
    accounts['balance']=accounts['balance']+amount;
    return accounts;
}

function doWithdraw(accounts, amount){
    // Withdraw amount from accounts if the amount is available.
    // For the purposes of this exercise, we won't do anything special if there is an insufficient balance.
if(accounts['balance']>=amount){
    accounts['balance']=accounts['balance']-amount
}
return accounts
}   

function doTransfer(debtor, creditor, amount){
    // Transfer amount from one account to another account: from debtor to creditor.
    // Remember to check for sufficient funds!
accounts={}
if(debtor['balance']>=amount){
    creditor['balance']=creditor['balance']+amount
    debtor['balance']=debtor['balance']-amount
}
accounts['debtor']=debtor
accounts['creditor']=creditor
return accounts
} 
