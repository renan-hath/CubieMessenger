.class Lcom/liquable/nemo/util/Pref$1;
.super Lorg/codehaus/jackson/type/TypeReference;
.source "Pref.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/util/Pref;->getAdwaysCampaignRecords()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/type/TypeReference",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Lcom/liquable/nemo/sticker/model/AdwaysCampaignRecord;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/util/Pref;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/util/Pref;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/util/Pref;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/liquable/nemo/util/Pref$1;->this$0:Lcom/liquable/nemo/util/Pref;

    invoke-direct {p0}, Lorg/codehaus/jackson/type/TypeReference;-><init>()V

    return-void
.end method
