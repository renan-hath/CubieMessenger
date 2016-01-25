.class public Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid$BitlyResult;
.super Ljava/lang/Object;
.source "BitlyAndroid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BitlyResult"
.end annotation


# instance fields
.field public hash:Ljava/lang/String;

.field public shortCNAMEUrl:Ljava/lang/String;

.field public shortKeywordUrl:Ljava/lang/String;

.field public shortUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid;

.field public userHash:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid;
    .param p2, "hash"    # Ljava/lang/String;
    .param p3, "shortCNAMEUrl"    # Ljava/lang/String;
    .param p4, "shortKeywordUrl"    # Ljava/lang/String;
    .param p5, "shortUrl"    # Ljava/lang/String;
    .param p6, "userHash"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid$BitlyResult;->this$0:Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p2, p0, Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid$BitlyResult;->hash:Ljava/lang/String;

    .line 101
    iput-object p3, p0, Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid$BitlyResult;->shortCNAMEUrl:Ljava/lang/String;

    .line 102
    iput-object p4, p0, Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid$BitlyResult;->shortKeywordUrl:Ljava/lang/String;

    .line 103
    iput-object p5, p0, Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid$BitlyResult;->shortUrl:Ljava/lang/String;

    .line 104
    iput-object p6, p0, Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid$BitlyResult;->userHash:Ljava/lang/String;

    .line 105
    return-void
.end method
