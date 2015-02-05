angular
  .module('questions')
  .controller 'IndexController', ($scope, supersonic) ->

    $scope.current        = 1
    $scope.totalQuestions = 100
    $scope.options        = duration: 0.3 ; curve: "linear"
    $scope.questions      = {
      1: "What are your child’s two most favorite foods?"
      2: "What two foods does your child dislike most?"
      3: "What are your child’s favorite kinds of music?"
      4: "Who are your child’s favorite singers?"
      5: "What are your child’s special hobbies and out-of-school interests?"
      6: "Name all your child’s friends."
      7: "Name all your child’s enemies."
      8: "Who are two of your child’s heroes and heroines?"
      9: "What are two of your child’s favorite videos or movies?"
      10: "What are two of your child’s favorite TV shows?"
      11: "Which animals does your child like, and which does he or she dislike?"
      12: "What would be your child’s ideal vacation getaway?"
      13: "Name two of your child’s favorite bands."
      14: "What sports does your child especially like to play?"
      15: "What sports does your child like to watch and follow?"
      16: "List one person your child has had a crush on."
      17: "Which sports does your child find uninteresting?"
      18: "If your child had a sizeable sum of money to spend and could go shopping anywhere, what three things would he or she buy?"
      19: "What is one thing your child would want to change about you?"
      20: "What types of clothing would your child prefer to wear and hate to wear?"
      21: "Who is your child’s least favorite relative?"
      22: "Name two people your child would pick for wall posters in his or her room."
      23: "Who is your child’s most favorite relative?"
      24: "What would be your child’s ideal birthday party this year?"
      25: "What are your child’s favorite types of dessert?"
      26: "If your child could design the ideal family, what would it look like?"
      27: "What is one thing you would like to change about your child?"
      28: "Name three preferences your child has about evenings at home (for example, prefers time alone reading)."
      29: "What would be your child’s least favorite kind of birthday party?"
      30: "What would be your child’s idea of a fun way to spend a rainy day indoors at home?"
      31: "What are three of your child’s recent favorite books?"
      32: "Name three favorite and three least favorite teachers of your child."
      33: "Name three preferences your child has about weekends (for example, prefers to go to a museum or ball game)."
      34: "Pick two of your child’s favorite songs or pieces of music."
      35: "What are the main problems your child will have to overcome to have a successful and happy life?"
      36: "What are two of your child’s favorite musical instruments?"
      37: "Describe two as yet unfulfilled dreams of your child."
      38: "What occupations or roles have your child seriously considered when grown up?"
      39: "What are two things your child definitely would not want to be when he or she grows up?"
      40: "What are two of your child’s favorite colors?"
      41: "What three games does your child like to play, if any?"
      42: "What is the color of your child’s eyes?"
      43: "To where would your child most like to travel, and why?"
      44: "Name two of your child’s favorite restaurants."
      45: "How does your child feel about reading?"
      46: "Name two places or events that your child would find uncomfortable."
      47: "What does your child like you to do when he or she is sick?"
      48: "What are your child’s comfort foods?"
      49: "What made your child the saddest in his or her life?"
      50: "How does your child feel about mathematics?"
      51: "What was the worst time your child ever had?"
      52: "How does your child feel about writing?"
      53: "What is your child’s attitude toward crime?"
      54: "What would be your child’s ideal bedtime routine?"
      55: "What are two of your child’s favorite ways to exercise?"
      56: "What would be your child’s idea of the best present to receive on a birthday?"
      57: "What are two things your child is afraid of?"
      58: "How does your child feel about war?"
      59: "What would be a favorite ways for your child to spend a weekend?"
      60: "Describe one great day your child recently had. What happened that day?"
      61: "What two things make your child most angry?"
      62: "How does your child feel about travel?"
      63: "Does your child know the real differences between good and evil? How do you know that about your child?"
      64: "To where would your child prefer to travel?"
      65: "Describe one heart-to-heart talk you recently had with your child."
      66: "Describe your child’s best and least liked lunch to take along to school."
      67: "What are two of your child’s current stresses?"
      68: "List two lies your child has told."
      69: "What does your child think of hunting animals?"
      70: "What does your child feel about the police?"
      71: "List three of your child’s personality weaknesses that you worry about."
      72: "What are the worst and best parts of the year your child is currently having?"
      73: "List your child’s three favorite adults."
      74: "What is your child’s attitude toward money?"
      75: "How does your child feel about politics?"
      76: "How does your child feel about whales, and why?"
      77: "How does your child feel about school tests?"
      78: "How does your child feel about teasing?"
      79: "What is your child’s attitude toward poor people?"
      80: "Describe one time when your child felt ashamed or humiliated."
      81: "What was the best time your child ever had, and why?"
      82: "What are two things that your child is really worried about?"
      83: "What would be your child’s idea of the “coolest” car to own?"
      84: "What are your child’s attitudes toward violence?"
      85: "What is one thing you could do to improve your relationship with your child?"
      86: "What would your child describe as the best experience he or she ever had?"
      87: "What does your child most like to do with friends?"
      88: "How would your child get over being sad?"
      89: "What have been some of your child’s best and worst summer experiences?"
      90: "How would your child ideally like to decorate his or her room?"
      91: "How does your child try to get your attention?"
      92: "What is your child’s attitude toward homework?"
      93: "What are two things your child is proudest of about himself or herself?"
      94: "Describe one bad day your child recently had. What happened that day?"
      95: "What would your child choose to give you as a birthday gift? "
      96: "Who was your child’s favorite all time teacher, and why?"
      97: "Describe one nightmare your child has had."
      98: "What are your child’s feelings about nature?"
      99: "How does your child feel about charity?"
      100: "What would your child describe as the worst experience he or she ever had?"
    }

    $scope.previousQuestion = () ->
      $scope.current -= 1
      $scope.current = $scope.totalQuestions if $scope.current < 1
      supersonic.ui.animate("slideFromLeft", $scope.options).perform()

    $scope.nextQuestion = () ->
      $scope.current += 1
      $scope.current = 1 if $scope.current > $scope.totalQuestions
      supersonic.ui.animate("slideFromRight", $scope.options).perform()

    $scope.currentQuestion = () -> $scope.questions[$scope.current]

    $scope.resetQuestions = () ->
      return if $scope.current == 1
      $scope.current = 1
      supersonic.ui.animate("slideFromLeft", $scope.options).perform()