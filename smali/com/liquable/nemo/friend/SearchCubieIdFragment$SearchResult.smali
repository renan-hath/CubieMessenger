.class Lcom/liquable/nemo/friend/SearchCubieIdFragment$SearchResult;
.super Ljava/lang/Object;
.source "SearchCubieIdFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/friend/SearchCubieIdFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SearchResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/friend/SearchCubieIdFragment$SearchResult$Type;
    }
.end annotation


# instance fields
.field account:Lcom/liquable/nemo/friend/model/Account;

.field accountDto:Lcom/liquable/nemo/model/account/AccountDto;

.field type:Lcom/liquable/nemo/friend/SearchCubieIdFragment$SearchResult$Type;


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/friend/SearchCubieIdFragment$SearchResult$Type;Lcom/liquable/nemo/friend/model/Account;Lcom/liquable/nemo/model/account/AccountDto;)V
    .locals 0
    .param p1, "type"    # Lcom/liquable/nemo/friend/SearchCubieIdFragment$SearchResult$Type;
    .param p2, "account"    # Lcom/liquable/nemo/friend/model/Account;
    .param p3, "accountDto"    # Lcom/liquable/nemo/model/account/AccountDto;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/liquable/nemo/friend/SearchCubieIdFragment$SearchResult;->type:Lcom/liquable/nemo/friend/SearchCubieIdFragment$SearchResult$Type;

    .line 65
    iput-object p2, p0, Lcom/liquable/nemo/friend/SearchCubieIdFragment$SearchResult;->account:Lcom/liquable/nemo/friend/model/Account;

    .line 66
    iput-object p3, p0, Lcom/liquable/nemo/friend/SearchCubieIdFragment$SearchResult;->accountDto:Lcom/liquable/nemo/model/account/AccountDto;

    .line 67
    return-void
.end method

.method public static create()Lcom/liquable/nemo/friend/SearchCubieIdFragment$SearchResult;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 46
    new-instance v0, Lcom/liquable/nemo/friend/SearchCubieIdFragment$SearchResult;

    sget-object v1, Lcom/liquable/nemo/friend/SearchCubieIdFragment$SearchResult$Type;->ME:Lcom/liquable/nemo/friend/SearchCubieIdFragment$SearchResult$Type;

    invoke-direct {v0, v1, v2, v2}, Lcom/liquable/nemo/friend/SearchCubieIdFragment$SearchResult;-><init>(Lcom/liquable/nemo/friend/SearchCubieIdFragment$SearchResult$Type;Lcom/liquable/nemo/friend/model/Account;Lcom/liquable/nemo/model/account/AccountDto;)V

    return-object v0
.end method

.method public static create(Lcom/liquable/nemo/friend/model/Account;)Lcom/liquable/nemo/friend/SearchCubieIdFragment$SearchResult;
    .locals 3
    .param p0, "account"    # Lcom/liquable/nemo/friend/model/Account;

    .prologue
    .line 50
    new-instance v0, Lcom/liquable/nemo/friend/SearchCubieIdFragment$SearchResult;

    sget-object v1, Lcom/liquable/nemo/friend/SearchCubieIdFragment$SearchResult$Type;->LOCAL:Lcom/liquable/nemo/friend/SearchCubieIdFragment$SearchResult$Type;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/liquable/nemo/friend/SearchCubieIdFragment$SearchResult;-><init>(Lcom/liquable/nemo/friend/SearchCubieIdFragment$SearchResult$Type;Lcom/liquable/nemo/friend/model/Account;Lcom/liquable/nemo/model/account/AccountDto;)V

    return-object v0
.end method

.method public static create(Lcom/liquable/nemo/model/account/AccountDto;)Lcom/liquable/nemo/friend/SearchCubieIdFragment$SearchResult;
    .locals 3
    .param p0, "accountDto"    # Lcom/liquable/nemo/model/account/AccountDto;

    .prologue
    .line 54
    new-instance v0, Lcom/liquable/nemo/friend/SearchCubieIdFragment$SearchResult;

    sget-object v1, Lcom/liquable/nemo/friend/SearchCubieIdFragment$SearchResult$Type;->SERVER:Lcom/liquable/nemo/friend/SearchCubieIdFragment$SearchResult$Type;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Lcom/liquable/nemo/friend/SearchCubieIdFragment$SearchResult;-><init>(Lcom/liquable/nemo/friend/SearchCubieIdFragment$SearchResult$Type;Lcom/liquable/nemo/friend/model/Account;Lcom/liquable/nemo/model/account/AccountDto;)V

    return-object v0
.end method
