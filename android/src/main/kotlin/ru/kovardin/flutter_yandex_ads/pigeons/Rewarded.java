// Autogenerated from Pigeon (v1.0.19), do not edit directly.
// See also: https://pub.dev/packages/pigeon

package ru.kovardin.flutter_yandex_ads.pigeons;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.flutter.plugin.common.BasicMessageChannel;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MessageCodec;
import io.flutter.plugin.common.StandardMessageCodec;
import java.io.ByteArrayOutputStream;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.HashMap;

/** Generated class from Pigeon. */
@SuppressWarnings({"unused", "unchecked", "CodeBlock2Expr", "RedundantSuppression"})
public class Rewarded {
  private static class YandexAdsRewardedCodec extends StandardMessageCodec {
    public static final YandexAdsRewardedCodec INSTANCE = new YandexAdsRewardedCodec();
    private YandexAdsRewardedCodec() {}
  }

  /** Generated interface from Pigeon that represents a handler of messages from Flutter.*/
  public interface YandexAdsRewarded {
    @NonNull void load();

    /** The codec used by YandexAdsRewarded. */
    static MessageCodec<Object> getCodec() {
      return YandexAdsRewardedCodec.INSTANCE;
    }

    /** Sets up an instance of `YandexAdsRewarded` to handle messages through the `binaryMessenger`. */
    static void setup(BinaryMessenger binaryMessenger, YandexAdsRewarded api) {
      {
        BasicMessageChannel<Object> channel =
            new BasicMessageChannel<>(binaryMessenger, "dev.flutter.pigeon.YandexAdsRewarded.load", getCodec());
        if (api != null) {
          channel.setMessageHandler((message, reply) -> {
            Map<String, Object> wrapped = new HashMap<>();
            try {
              api.load();
              wrapped.put("result", null);
            }
            catch (Error | RuntimeException exception) {
              wrapped.put("error", wrapError(exception));
            }
            reply.reply(wrapped);
          });
        } else {
          channel.setMessageHandler(null);
        }
      }
    }
  }
  private static Map<String, Object> wrapError(Throwable exception) {
    Map<String, Object> errorMap = new HashMap<>();
    errorMap.put("message", exception.toString());
    errorMap.put("code", exception.getClass().getSimpleName());
    errorMap.put("details", "Cause: " + exception.getCause() + ", Stacktrace: " + Log.getStackTraceString(exception));
    return errorMap;
  }
}
