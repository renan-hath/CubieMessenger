.class public Lcom/liquable/nemo/friend/twitter/TwitterCredential;
.super Ljava/lang/Object;
.source "TwitterCredential.java"


# instance fields
.field private final token:Ljava/lang/String;

.field private final tokenSecret:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "tokenSecret"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/liquable/nemo/friend/twitter/TwitterCredential;->token:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/liquable/nemo/friend/twitter/TwitterCredential;->tokenSecret:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public static createLogoutTwitterCredential()Lcom/liquable/nemo/friend/twitter/TwitterCredential;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6
    new-instance v0, Lcom/liquable/nemo/friend/twitter/TwitterCredential;

    invoke-direct {v0, v1, v1}, Lcom/liquable/nemo/friend/twitter/TwitterCredential;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/liquable/nemo/friend/twitter/TwitterCredential;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/liquable/nemo/friend/twitter/TwitterCredential;->tokenSecret:Ljava/lang/String;

    return-object v0
.end method
