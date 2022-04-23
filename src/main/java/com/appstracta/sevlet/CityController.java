package com.appstracta.sevlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.appstracta.bean.CityBean;
import com.appstracta.bo.ICityBo;
import com.appstracta.bo.impl.CityBoImpl;
import com.appstracta.exceptions.InternalException;

/**
 * Servlet implementation class CityController
 */
@WebServlet(description = "Controlador de ciudades", urlPatterns = { "/ciudad" })
public class CityController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String view = request.getParameter("view");

			if (view != null && !view.trim().isEmpty()) {
				ICityBo cityBo = new CityBoImpl();

				// Logica del controllador
				if("obtenertodos".equalsIgnoreCase(view)) {
					List<CityBean> cities = cityBo.obtenerTodos();

					request.setAttribute("cities", cities);
					request.getRequestDispatcher("/view/ciudad/obtnerTodos.jsp").forward(request, response);
				} else if("obtenerPorId".equalsIgnoreCase(view)) {
					request.setAttribute("cityId", 500);
					request.getRequestDispatcher("/view/ciudad/obtnerPorId.jsp").forward(request, response);
				}
			}
		} catch (InternalException e) {
			response.sendRedirect(request.getContextPath() + "/view/error.jsp");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
