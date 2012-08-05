package org.tksmaru.web.sandbox.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/thread")
public class ThreadController {

	private static final Logger log = LoggerFactory
			.getLogger(ThreadController.class);

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView top() throws Exception {
		return new ModelAndView("/thread/top");
	}

	/**
	 * 指定した秒数だけ実行スレッドを滞留させる。
	 * 
	 * @param stopSec
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/invoke", method = RequestMethod.POST)
	public ModelAndView invoke(
			@RequestParam(value = "time", defaultValue = "0", required = false) int stopSec)
			throws Exception {

		log.info("thread sleep start.");
		Thread.sleep(stopSec * 1000);
		log.info("thread sleep end.");
		return new ModelAndView("/thread/top");
	}

}
