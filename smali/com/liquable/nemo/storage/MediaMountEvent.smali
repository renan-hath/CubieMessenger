.class public final enum Lcom/liquable/nemo/storage/MediaMountEvent;
.super Ljava/lang/Enum;
.source "MediaMountEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/storage/MediaMountEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/storage/MediaMountEvent;

.field public static final ACTION_NAME:Ljava/lang/String; = "com.liquable.nemo.storage.MediaMountEvent"

.field public static final enum MOUNT:Lcom/liquable/nemo/storage/MediaMountEvent;

.field public static final enum UNMOUNT:Lcom/liquable/nemo/storage/MediaMountEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/liquable/nemo/storage/MediaMountEvent;

    const-string/jumbo v1, "MOUNT"

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/storage/MediaMountEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/storage/MediaMountEvent;->MOUNT:Lcom/liquable/nemo/storage/MediaMountEvent;

    new-instance v0, Lcom/liquable/nemo/storage/MediaMountEvent;

    const-string/jumbo v1, "UNMOUNT"

    invoke-direct {v0, v1, v3}, Lcom/liquable/nemo/storage/MediaMountEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/storage/MediaMountEvent;->UNMOUNT:Lcom/liquable/nemo/storage/MediaMountEvent;

    .line 3
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/liquable/nemo/storage/MediaMountEvent;

    sget-object v1, Lcom/liquable/nemo/storage/MediaMountEvent;->MOUNT:Lcom/liquable/nemo/storage/MediaMountEvent;

    aput-object v1, v0, v2

    sget-object v1, Lcom/liquable/nemo/storage/MediaMountEvent;->UNMOUNT:Lcom/liquable/nemo/storage/MediaMountEvent;

    aput-object v1, v0, v3

    sput-object v0, Lcom/liquable/nemo/storage/MediaMountEvent;->$VALUES:[Lcom/liquable/nemo/storage/MediaMountEvent;

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

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/storage/MediaMountEvent;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/liquable/nemo/storage/MediaMountEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/storage/MediaMountEvent;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/storage/MediaMountEvent;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/liquable/nemo/storage/MediaMountEvent;->$VALUES:[Lcom/liquable/nemo/storage/MediaMountEvent;

    invoke-virtual {v0}, [Lcom/liquable/nemo/storage/MediaMountEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/storage/MediaMountEvent;

    return-object v0
.end method
