.class public final enum Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;
.super Ljava/lang/Enum;
.source "FileTransferAndroidService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/android/service/FileTransferAndroidService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FileTransferAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;

.field public static final enum CANCEL_DOWNLOAD:Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;

.field public static final enum CANCEL_UPLOAD:Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;

.field public static final enum DELETE:Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;

.field public static final enum DOWNLOAD:Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;

.field public static final enum DOWNLOAD_EXTRA_FILE:Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;

.field public static final enum SCAN_MEDIA:Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;

.field public static final enum UPLOAD:Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 64
    new-instance v0, Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;

    const-string/jumbo v1, "DOWNLOAD"

    invoke-direct {v0, v1, v3}, Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;->DOWNLOAD:Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;

    .line 65
    new-instance v0, Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;

    const-string/jumbo v1, "UPLOAD"

    invoke-direct {v0, v1, v4}, Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;->UPLOAD:Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;

    .line 66
    new-instance v0, Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;

    const-string/jumbo v1, "CANCEL_UPLOAD"

    invoke-direct {v0, v1, v5}, Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;->CANCEL_UPLOAD:Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;

    .line 67
    new-instance v0, Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;

    const-string/jumbo v1, "CANCEL_DOWNLOAD"

    invoke-direct {v0, v1, v6}, Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;->CANCEL_DOWNLOAD:Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;

    .line 68
    new-instance v0, Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;

    const-string/jumbo v1, "DOWNLOAD_EXTRA_FILE"

    invoke-direct {v0, v1, v7}, Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;->DOWNLOAD_EXTRA_FILE:Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;

    .line 69
    new-instance v0, Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;

    const-string/jumbo v1, "SCAN_MEDIA"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;->SCAN_MEDIA:Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;

    .line 70
    new-instance v0, Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;

    const-string/jumbo v1, "DELETE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;->DELETE:Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;

    .line 63
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;

    sget-object v1, Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;->DOWNLOAD:Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;->UPLOAD:Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;

    aput-object v1, v0, v4

    sget-object v1, Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;->CANCEL_UPLOAD:Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;

    aput-object v1, v0, v5

    sget-object v1, Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;->CANCEL_DOWNLOAD:Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;

    aput-object v1, v0, v6

    sget-object v1, Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;->DOWNLOAD_EXTRA_FILE:Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;->SCAN_MEDIA:Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;->DELETE:Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;

    aput-object v2, v0, v1

    sput-object v0, Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;->$VALUES:[Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;

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
    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static toStrings()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .local v1, "actionValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;->values()[Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 76
    .local v0, "action":Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;
    invoke-virtual {v0}, Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 78
    .end local v0    # "action":Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;
    :cond_0
    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 63
    const-class v0, Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;->$VALUES:[Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;

    invoke-virtual {v0}, [Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferAction;

    return-object v0
.end method
