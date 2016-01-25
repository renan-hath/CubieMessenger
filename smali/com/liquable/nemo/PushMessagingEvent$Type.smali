.class public final enum Lcom/liquable/nemo/PushMessagingEvent$Type;
.super Ljava/lang/Enum;
.source "PushMessagingEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/PushMessagingEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/PushMessagingEvent$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/PushMessagingEvent$Type;

.field public static final enum MIGRATE:Lcom/liquable/nemo/PushMessagingEvent$Type;

.field public static final enum UPDATE:Lcom/liquable/nemo/PushMessagingEvent$Type;


# instance fields
.field protected final key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7
    new-instance v0, Lcom/liquable/nemo/PushMessagingEvent$Type;

    const-string/jumbo v1, "UPDATE"

    const-string/jumbo v2, "com.liquable.nemo.PushMessagingEvent.UPDATE"

    invoke-direct {v0, v1, v3, v2}, Lcom/liquable/nemo/PushMessagingEvent$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/liquable/nemo/PushMessagingEvent$Type;->UPDATE:Lcom/liquable/nemo/PushMessagingEvent$Type;

    .line 8
    new-instance v0, Lcom/liquable/nemo/PushMessagingEvent$Type;

    const-string/jumbo v1, "MIGRATE"

    const-string/jumbo v2, "com.liquable.nemo.PushMessagingEvent.MIGRATE"

    invoke-direct {v0, v1, v4, v2}, Lcom/liquable/nemo/PushMessagingEvent$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/liquable/nemo/PushMessagingEvent$Type;->MIGRATE:Lcom/liquable/nemo/PushMessagingEvent$Type;

    .line 6
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/liquable/nemo/PushMessagingEvent$Type;

    sget-object v1, Lcom/liquable/nemo/PushMessagingEvent$Type;->UPDATE:Lcom/liquable/nemo/PushMessagingEvent$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/liquable/nemo/PushMessagingEvent$Type;->MIGRATE:Lcom/liquable/nemo/PushMessagingEvent$Type;

    aput-object v1, v0, v4

    sput-object v0, Lcom/liquable/nemo/PushMessagingEvent$Type;->$VALUES:[Lcom/liquable/nemo/PushMessagingEvent$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    iput-object p3, p0, Lcom/liquable/nemo/PushMessagingEvent$Type;->key:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/PushMessagingEvent$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/liquable/nemo/PushMessagingEvent$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/PushMessagingEvent$Type;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/PushMessagingEvent$Type;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/liquable/nemo/PushMessagingEvent$Type;->$VALUES:[Lcom/liquable/nemo/PushMessagingEvent$Type;

    invoke-virtual {v0}, [Lcom/liquable/nemo/PushMessagingEvent$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/PushMessagingEvent$Type;

    return-object v0
.end method
