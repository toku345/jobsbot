CronJob = require('cron').CronJob
_ = require('lodash')

messages = [
  "Stay hungry, stay hoolish."
  "Keep looking. Don’t settle."
  "If today were the last day of my life, would I want to do what I am about to do today?"
  """
  I’m convinced that the only thing that kept me going was that I loved what I did.
  You’ve got to find what you love.
  And that is as true for your work as it is for your lovers."
  """
  """
  You can’t connect the dots looking forward; you can only connect them looking backwards.
  So you have to trust that the dots will somehow connect in your future.
  """
  """
  The only way to do great work is to love what you do.
  If you haven’t found it yet, keep looking.
  Don’t settle.
  As with all matters of the heart, you’ll know when you find it.
  """
  """
  Do you want to spend the rest of your life selling sugared water, or do you want a chance to change the world?
  """
  """
  Your time is limited, so don’t waste it living someone else’s life.
  Don’t be trapped by dogma – which is living with the results of other people’s thinking.
  Don’t let the noise of others’ opinions drown out your own inner voice.
  And most important, have the courage to follow your heart and intuition.
  They somehow already know what you truly want to become.
  Everything else is secondary.
  """
  "I’m as proud of what we don’t do as I am of what we do."
  """
  一つのことに集中して取り組むのなら、
  その間は、あり得たはずの別の人生をあきらめなければならない。
  意義のある何かを成し遂げたいのなら、
  そのことしか目に入らないひたむきさで突き進まなければならない。
  ビジネスマンではなく、
  クリエイティブな人間になりたいのなら、なおさらだ。
  """
]

module.exports = (robot) ->
  message = "@toku345: \n#{_.sample messages}"
  morningMessage = new CronJob '00 00 07 * * *', () =>
    robot.messageRoom 'general', message, null, true, 'Asia/Tokyo'
  morningMessage.start()
