.class public Lcom/liquable/nemo/util/BitlyService;
.super Ljava/lang/Object;
.source "BitlyService.java"


# static fields
.field private static final BITLY_API_KEY:Ljava/lang/String; = "R_3057b1ed7ef38c054d476cab29601875"

.field private static final BITLY_USENAME:Ljava/lang/String; = "tempo"


# instance fields
.field private final bitlyAndroid:Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid;

    const-string/jumbo v1, "tempo"

    const-string/jumbo v2, "R_3057b1ed7ef38c054d476cab29601875"

    invoke-direct {v0, v1, v2}, Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/liquable/nemo/util/BitlyService;->bitlyAndroid:Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid;

    .line 15
    return-void
.end method


# virtual methods
.method public getShortUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lcom/liquable/nemo/util/BitlyService;->bitlyAndroid:Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid;

    invoke-virtual {v0, p1}, Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid;->getShortUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
