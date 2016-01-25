.class public final enum Lcom/liquable/nemo/share/ShareEvent;
.super Ljava/lang/Enum;
.source "ShareEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/share/ShareEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/share/ShareEvent;

.field public static final ACTION_NAME:Ljava/lang/String; = "com.liquable.nemo.share.SHARE_EVENT"

.field public static final enum REFRESH:Lcom/liquable/nemo/share/ShareEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/liquable/nemo/share/ShareEvent;

    const-string/jumbo v1, "REFRESH"

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/share/ShareEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/share/ShareEvent;->REFRESH:Lcom/liquable/nemo/share/ShareEvent;

    .line 3
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/liquable/nemo/share/ShareEvent;

    sget-object v1, Lcom/liquable/nemo/share/ShareEvent;->REFRESH:Lcom/liquable/nemo/share/ShareEvent;

    aput-object v1, v0, v2

    sput-object v0, Lcom/liquable/nemo/share/ShareEvent;->$VALUES:[Lcom/liquable/nemo/share/ShareEvent;

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

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/share/ShareEvent;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/liquable/nemo/share/ShareEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/share/ShareEvent;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/share/ShareEvent;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/liquable/nemo/share/ShareEvent;->$VALUES:[Lcom/liquable/nemo/share/ShareEvent;

    invoke-virtual {v0}, [Lcom/liquable/nemo/share/ShareEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/share/ShareEvent;

    return-object v0
.end method
