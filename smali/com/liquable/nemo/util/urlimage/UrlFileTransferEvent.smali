.class public final enum Lcom/liquable/nemo/util/urlimage/UrlFileTransferEvent;
.super Ljava/lang/Enum;
.source "UrlFileTransferEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/util/urlimage/UrlFileTransferEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/util/urlimage/UrlFileTransferEvent;

.field public static final ACTION_NAME:Ljava/lang/String; = "com.liquable.nemo.util.urlimage.UrlFileTransferEvent.ACTION_NAME"

.field public static final enum ADD:Lcom/liquable/nemo/util/urlimage/UrlFileTransferEvent;

.field public static final enum COMPLETE:Lcom/liquable/nemo/util/urlimage/UrlFileTransferEvent;

.field public static final enum FAIL:Lcom/liquable/nemo/util/urlimage/UrlFileTransferEvent;

.field public static final IMAGE_HASH_CODE:Ljava/lang/String; = "com.liquable.nemo.util.urlimage.UrlFileTransferEvent.IMAGE_HASH_CODE"

.field public static final enum PROGRESS:Lcom/liquable/nemo/util/urlimage/UrlFileTransferEvent;

.field public static final enum START:Lcom/liquable/nemo/util/urlimage/UrlFileTransferEvent;

.field public static final TYPE:Ljava/lang/String; = "com.liquable.nemo.util.urlimage.UrlFileTransferEvent.TYPE"


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/liquable/nemo/util/urlimage/UrlFileTransferEvent;

    const-string/jumbo v1, "ADD"

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/util/urlimage/UrlFileTransferEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/util/urlimage/UrlFileTransferEvent;->ADD:Lcom/liquable/nemo/util/urlimage/UrlFileTransferEvent;

    new-instance v0, Lcom/liquable/nemo/util/urlimage/UrlFileTransferEvent;

    const-string/jumbo v1, "START"

    invoke-direct {v0, v1, v3}, Lcom/liquable/nemo/util/urlimage/UrlFileTransferEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/util/urlimage/UrlFileTransferEvent;->START:Lcom/liquable/nemo/util/urlimage/UrlFileTransferEvent;

    new-instance v0, Lcom/liquable/nemo/util/urlimage/UrlFileTransferEvent;

    const-string/jumbo v1, "PROGRESS"

    invoke-direct {v0, v1, v4}, Lcom/liquable/nemo/util/urlimage/UrlFileTransferEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/util/urlimage/UrlFileTransferEvent;->PROGRESS:Lcom/liquable/nemo/util/urlimage/UrlFileTransferEvent;

    new-instance v0, Lcom/liquable/nemo/util/urlimage/UrlFileTransferEvent;

    const-string/jumbo v1, "COMPLETE"

    invoke-direct {v0, v1, v5}, Lcom/liquable/nemo/util/urlimage/UrlFileTransferEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/util/urlimage/UrlFileTransferEvent;->COMPLETE:Lcom/liquable/nemo/util/urlimage/UrlFileTransferEvent;

    new-instance v0, Lcom/liquable/nemo/util/urlimage/UrlFileTransferEvent;

    const-string/jumbo v1, "FAIL"

    invoke-direct {v0, v1, v6}, Lcom/liquable/nemo/util/urlimage/UrlFileTransferEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/util/urlimage/UrlFileTransferEvent;->FAIL:Lcom/liquable/nemo/util/urlimage/UrlFileTransferEvent;

    .line 3
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/liquable/nemo/util/urlimage/UrlFileTransferEvent;

    sget-object v1, Lcom/liquable/nemo/util/urlimage/UrlFileTransferEvent;->ADD:Lcom/liquable/nemo/util/urlimage/UrlFileTransferEvent;

    aput-object v1, v0, v2

    sget-object v1, Lcom/liquable/nemo/util/urlimage/UrlFileTransferEvent;->START:Lcom/liquable/nemo/util/urlimage/UrlFileTransferEvent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/liquable/nemo/util/urlimage/UrlFileTransferEvent;->PROGRESS:Lcom/liquable/nemo/util/urlimage/UrlFileTransferEvent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/liquable/nemo/util/urlimage/UrlFileTransferEvent;->COMPLETE:Lcom/liquable/nemo/util/urlimage/UrlFileTransferEvent;

    aput-object v1, v0, v5

    sget-object v1, Lcom/liquable/nemo/util/urlimage/UrlFileTransferEvent;->FAIL:Lcom/liquable/nemo/util/urlimage/UrlFileTransferEvent;

    aput-object v1, v0, v6

    sput-object v0, Lcom/liquable/nemo/util/urlimage/UrlFileTransferEvent;->$VALUES:[Lcom/liquable/nemo/util/urlimage/UrlFileTransferEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/util/urlimage/UrlFileTransferEvent;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/liquable/nemo/util/urlimage/UrlFileTransferEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/util/urlimage/UrlFileTransferEvent;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/util/urlimage/UrlFileTransferEvent;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/liquable/nemo/util/urlimage/UrlFileTransferEvent;->$VALUES:[Lcom/liquable/nemo/util/urlimage/UrlFileTransferEvent;

    invoke-virtual {v0}, [Lcom/liquable/nemo/util/urlimage/UrlFileTransferEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/util/urlimage/UrlFileTransferEvent;

    return-object v0
.end method
