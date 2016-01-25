.class public final enum Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter$State;
.super Ljava/lang/Enum;
.source "AbstractMediaHistoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter$State;

.field public static final enum ARCHIVED:Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter$State;

.field public static final enum DONE:Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter$State;

.field public static final enum MESSAGES:Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-instance v0, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter$State;

    const-string/jumbo v1, "MESSAGES"

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter$State;->MESSAGES:Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter$State;

    new-instance v0, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter$State;

    const-string/jumbo v1, "ARCHIVED"

    invoke-direct {v0, v1, v3}, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter$State;->ARCHIVED:Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter$State;

    new-instance v0, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter$State;

    const-string/jumbo v1, "DONE"

    invoke-direct {v0, v1, v4}, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter$State;->DONE:Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter$State;

    .line 25
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter$State;

    sget-object v1, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter$State;->MESSAGES:Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter$State;->ARCHIVED:Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter$State;->DONE:Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter$State;->$VALUES:[Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter$State;

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
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 25
    const-class v0, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter$State;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter$State;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter$State;->$VALUES:[Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter$State;

    invoke-virtual {v0}, [Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter$State;

    return-object v0
.end method
